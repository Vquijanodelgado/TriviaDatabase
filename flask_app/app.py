from flask import Flask, jsonify, request
from flask_cors import CORS
from werkzeug.security import generate_password_hash, check_password_hash
from datetime import datetime
import psycopg
import random

# Credentials Information
hostname = 'localhost'
database = 'trivia_database'
username = 'postgres'
pwd = 'Pitosa1@'
port_id = 5432

app = Flask(__name__)
CORS(app) 

# the function for connection to database, making a connection object
def connect_db():
    try:
        conn = psycopg.connect(
            host = hostname,
            dbname = database,
            user = username,
            password = pwd,
            port = port_id)
        print("Successful connection to database.")
        return conn
    except Exception as e:
        print(f"Error connecting: {e}")
        return None

# testing route to fetch trivia questions
@app.route('/trivia/data', methods=['GET'])
def get_trivia_questions():
    conn = connect_db()
    if conn is None:
        return jsonify({"error": "failed connecting to database"}), 500
    cursor = conn.cursor()
    cursor.execute('SELECT question_text FROM questions;')
    questions = cursor.fetchall()
    conn.close()
    result = [{"question": q[0]} for q in questions]
    return jsonify(result)

@app.route('/user/register', methods=['POST'])
def register_user():
    data = request.get_json()
    email = data.get('email')
    username = data.get('username')
    password = data.get('password')

    if not email or not username or not password:
        return jsonify({"error": "All fields are required"}), 400

    # hashing password bc real passwords should not be in table
    password_hash = generate_password_hash(password)
    conn = connect_db()
    if conn is None:
        return jsonify({"error": "failed connecting to the database"}), 500

    cursor = conn.cursor()
    try:
        cursor.execute(
            'INSERT INTO users (email, username, password_hash) VALUES (%s, %s, %s)',
            (email, username, password_hash)
        )
        conn.commit()
        return jsonify({"message": "User registered successfully"}), 201
    except Exception as e:
        conn.rollback()
        return jsonify({"error": str(e)}), 500
    finally:
        conn.close()

@app.route('/user/login', methods=['POST'])
def login_user():
    data = request.get_json()
    email = data.get('email')
    password = data.get('password')

    if not email or not password:
        return jsonify({"error": "Email and password are required"}), 400
    conn = connect_db()
    if conn is None:
        return jsonify({"error": "Database connection failed"}), 500

    cursor = conn.cursor()
    try:
        cursor.execute('SELECT password_hash FROM users WHERE email = %s', (email,))
        result = cursor.fetchone()
        if result is None:
            return jsonify({"error": "Invalid email or password"}), 401

        password_hash = result[0]
        if not check_password_hash(password_hash, password):
            return jsonify({"error": "Invalid email or password"}), 401

        return jsonify({"message": "Login successful"}), 200
    except Exception as e:
        return jsonify({"error": str(e)}), 500
    finally:
        conn.close()

@app.route('/trivia/questions', methods=['GET'])
def get_questions_by_difficulty():
    difficulty_level = request.args.get('difficulty_level', default="easy")
    conn = connect_db()
    if conn is None:
        return jsonify({"error": "Database connection failed"}), 500

    cursor = conn.cursor()
    try:
        cursor.execute(
            'SELECT question_text FROM questions WHERE difficulty_level = %s;',
            (difficulty_level,)
        )
        questions = cursor.fetchall()
        random_questions = random.sample(questions, min(10, len(questions)))
        result = [{"question": q[0]} for q in random_questions]
        return jsonify(result), 200
    except Exception as e:
        return jsonify({"error": str(e)}), 500
    finally:
        conn.close()

# @app.route('/trivia/questions', methods=['GET'])
# def get_random_trivia_questions():
#     conn = connect_db()
#     if conn is None:
#         return jsonify({"error": "failed connecting to database"}), 500

#     cursor = conn.cursor()
#     try:
#         cursor.execute('SELECT question_text FROM questions;')
#         all_questions = cursor.fetchall()
#         conn.close()

#         # gets 10 random questions
#         random_questions = random.sample(all_questions, min(10, len(all_questions)))
#         result = [{"question": q[0]} for q in random_questions]
#         return jsonify(result), 200
#     except Exception as e:
#         return jsonify({"error": str(e)}), 500

@app.route('/attempt/start', methods=['POST']) #makes a new attempt
def start_attempt():
    data = request.get_json()
    email = data.get('email')

    if not email:
        return jsonify({"error": "Email is required"}), 400

    attempt_date_time = datetime.now()
    start_time = attempt_date_time.time()
    placeholder_end_time = attempt_date_time.time()  # Placeholder end time bc database says NOT NULL

    conn = connect_db()
    if conn is None:
        return jsonify({"error": "Database connection failed"}), 500

    cursor = conn.cursor()
    try:
        cursor.execute(
            'INSERT INTO attempts (email, attempt_date_time, start_time, end_time, total_score, duration) '
            'VALUES (%s, %s, %s, %s, %s, %s)',
            (email, attempt_date_time, start_time, placeholder_end_time, 0, 0)
        )
        conn.commit()
        return jsonify({"message": "Attempt started", "attempt_date_time": attempt_date_time.isoformat()}), 201
    except Exception as e:
        conn.rollback()
        return jsonify({"error": str(e)}), 500
    finally:
        conn.close()

# records user's answers from an attempt
@app.route('/attempt/answer', methods=['POST'])
def record_answer():
    data = request.get_json()
    email = data.get('email')
    attempt_date_time = data.get('attempt_date_time')
    question_text = data.get('question_text')
    user_answer = data.get('user_answer')

    if not email or not attempt_date_time or not question_text or user_answer is None:
        return jsonify({"error": "All fields are required"}), 400

    conn = connect_db()
    if conn is None:
        return jsonify({"error": "Database connection failed"}), 500

    cursor = conn.cursor()
    try:
        # Checks correct answer
        cursor.execute(
            'SELECT correct_answer FROM questions WHERE question_text = %s',
            (question_text,)
        )
        correct_answer = cursor.fetchone()
        if correct_answer is None:
            return jsonify({"error": "Question not found"}), 404

        #curson fetches a tuple, uses first element (boolean value)
        is_correct = correct_answer[0] == user_answer #comparison of user's input with the correct answer
        #bool(user_answer)

        # Insert the user's answer
        cursor.execute(
            'INSERT INTO attempt_answers (email, attempt_date_time, question_text, user_answer, is_correct) '
            'VALUES (%s, %s, %s, %s, %s)',
            (email, attempt_date_time, question_text, user_answer, is_correct)
        )
        conn.commit()
        return jsonify({"message": "Answer recorded", "is_correct": is_correct}), 201
    except Exception as e:
        conn.rollback()
        return jsonify({"error": str(e)}), 500
    finally:
        conn.close()

# unfinished attributes get filled, like duration
@app.route('/attempt/end', methods=['POST'])
def end_attempt():
    data = request.get_json()
    email = data.get('email')
    attempt_date_time = data.get('attempt_date_time')

    if not email or not attempt_date_time:
        return jsonify({"error": "Email and attempt_date_time are required"}), 400

    end_time = datetime.now().time()

    conn = connect_db()
    if conn is None:
        return jsonify({"error": "Database connection failed"}), 500

    cursor = conn.cursor()
    try:
        # Calculate total score
        cursor.execute(
            'SELECT COUNT(*) FROM attempt_answers WHERE email = %s AND attempt_date_time = %s AND is_correct = TRUE',
            (email, attempt_date_time)
        )
        total_score = cursor.fetchone()[0]

        # Calculate duration
        cursor.execute(
            'SELECT start_time FROM attempts WHERE email = %s AND attempt_date_time = %s',
            (email, attempt_date_time)
        )
        start_time = cursor.fetchone()[0]
        duration = (datetime.combine(datetime.today(), end_time) - datetime.combine(datetime.today(), start_time)).seconds

        # Update the attempt
        cursor.execute(
            'UPDATE attempts SET end_time = %s, total_score = %s, duration = %s '
            'WHERE email = %s AND attempt_date_time = %s',
            (end_time, total_score, duration, email, attempt_date_time)
        )
        conn.commit()
        return jsonify({"message": "Attempt ended", "total_score": total_score, "duration": duration}), 200
    except Exception as e:
        conn.rollback()
        return jsonify({"error": str(e)}), 500
    finally:
        conn.close()

@app.route('/attempt/results', methods=['GET'])
def get_attempt_results():
    email = request.args.get('email')
    attempt_date_time = request.args.get('attempt_date_time')

    if not email or not attempt_date_time:
        return jsonify({"error": "Email and attempt_date_time are required"}), 400

    conn = connect_db()
    if conn is None:
        return jsonify({"error": "Database connection failed"}), 500

    cursor = conn.cursor()
    try:
        # Fetch total_score and duration for the given attempt
        cursor.execute(
            'SELECT total_score, duration FROM attempts WHERE email = %s AND attempt_date_time = %s',
            (email, attempt_date_time)
        )
        result = cursor.fetchone()

        if result is None:
            return jsonify({"error": "Attempt not found"}), 404

        total_score, duration = result
        return jsonify({"total_score": total_score, "duration": duration}), 200
    except Exception as e:
        return jsonify({"error": str(e)}), 500
    finally:
        conn.close()

@app.route('/difficulties', methods=['GET'])
def get_difficulties():
    conn = connect_db()
    if conn is None:
        return jsonify({"error": "Database connection failed"}), 500

    cursor = conn.cursor()
    try:
        cursor.execute('SELECT difficulty_level, description FROM difficulty_levels;')
        difficulties = cursor.fetchall()
        result = [{"difficulty_level": d[0], "description": d[1]} for d in difficulties]
        return jsonify(result), 200
    except Exception as e:
        return jsonify({"error": str(e)}), 500
    finally:
        conn.close()



if __name__ == '__main__':
    app.run(debug=True)