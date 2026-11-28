import os
import mysql.connector
from dotenv import load_dotenv

# 1. Load variables from the .env file into Python's environment
load_dotenv()

def get_connection():
    # 2. Read each credential safely and open a MySQL connection
    return mysql.connector.connect(
        host=os.getenv("DB_HOST"),
        user=os.getenv("DB_USER"),
        password=os.getenv("DB_PASSWORD"),
        database=os.getenv("DB_NAME")
    )