
import os
import mysql.connector
from mysql.connector import Error


def get_connection():
    """Create and return a MySQL database connection."""
    try:
        connection = mysql.connector.connect(
            host=os.getenv("DB_HOST", "localhost"),
            user=os.getenv("DB_USER", "root"),
            password=os.getenv("DB_PASSWORD", "password"),
            database=os.getenv("DB_NAME", "spendwise")
        )

        if connection.is_connected():
            return connection

        connection.close()
        return None

    except Error as error:
        print(f"MySQL connection error: {error}")
        return None
