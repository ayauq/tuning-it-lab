from fastapi import FastAPI
import os
import psycopg2

app = FastAPI()

@app.get("/")
def home():
    return {"message": "Бэкенд работает!"}

@app.get("/db-test")
def test():
    try:
        # Эти данные мы пропишем позже в Docker
        conn = psycopg2.connect(
            host=os.getenv('DB_HOST', 'db'),
            database=os.getenv('DB_NAME', 'lab_db'),
            user=os.getenv('POSTGRES_USER', 'user'),
            password=os.getenv('POSTGRES_PASSWORD', 'password')
        )
        return {"status": "Связь с базой данных есть!"}
    except:
        return {"status": "База данных пока не видна"}
