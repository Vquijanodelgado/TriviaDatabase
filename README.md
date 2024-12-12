# Trivia Website and Database

Fun trivia questions website built using **Vue.js** for the front end and **Flask** for the backend, with a Postgresql database.
Database pulls from open Trivia Quiz Questions csv file on Kaggle : https://www.kaggle.com/datasets/shreyasur965/open-trivia-database-quiz-questions-all-categories/data

## Features
- main python3 code:
   - flask_app\app.py
- User registration, login, hash, saved to database
- Trivia questions fetched from PostgreSQL database titled 'trivia_database' which pulls from outside T
- Select difficulty level feature, constraints dataset questions
- dynamic results page, displays user's total percentage by category of questions
- user's score(s) saved to database

--- 

## **for Project setup**
### **1. Prerequisites**

installed:

- Node.js -> https://nodejs.org/ (for vue.js frontend)
- Python -> https://www.python.org/ 
- PostgreSQL -> https://www.postgresql.org/

### **2. Flask Back-end Setup**
1. navigate to the 'flask_app' directory:
   ```bash
   cd flask_app
2. create a virtual environment (optional)
   ```bash
   python -m venv venv
   for windows it is: source venv/bin/activate
3. installed:
   ```bash
   pip install flask flask-cors psycopg werkzeug
4. update database credentials (I used a random password for mine)
   ```bash
    hostname = 'localhost'
    database = 'trivia_database'
    username = 'postgres'
    pwd = 'your_password'
    port_id = 5432
5. PostgreSQL database set up:
   ```bash
    create tables schema using pgAdmin or psql:
    CREATE TABLE users (
        email VARCHAR(255) PRIMARY KEY,
        username VARCHAR(255) NOT NULL,
        password_hash VARCHAR(255) NOT NULL,
        UNIQUE (username)
    );
6. run flask server: python app.py, which will run on http://127.0.0.1:5000


### **3. Vue.js Front-end Setup**

1. navigate to the `vue_frontend` directory:
   ```bash
   cd vue_frontend
2. install dependencies: npm install
3. run the vue.js server: npm run serve
The app will run on http://localhost:8080

--- 