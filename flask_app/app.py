from flask import Flask, jsonify, request
from flask_cors import CORS
from werkzeug.security import generate_password_hash, check_password_hash
import psycopg

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


if __name__ == '__main__':
    app.run(debug=True)