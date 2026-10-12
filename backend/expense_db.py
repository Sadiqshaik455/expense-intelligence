
from db_connection import get_connection


def add_expense(amount, category, description, expense_date):
    """Insert one expense into MySQL."""
    connection = get_connection()

    if connection is None:
        print("Database connection failed.")
        return False

    cursor = None

    try:
        cursor = connection.cursor()

        query = """
            INSERT INTO expenses
                (amount, category, description, expense_date)
            VALUES (%s, %s, %s, %s)
        """

        values = (amount, category, description, expense_date)
        cursor.execute(query, values)
        connection.commit()

        print("Expense added successfully.")
        return True

    except Exception as error:
        connection.rollback()
        print("Error adding expense:", error)
        return False

    finally:
        if cursor is not None:
            cursor.close()
        connection.close()


def get_all_expenses():
    """Retrieve all expenses, newest first."""
    connection = get_connection()

    if connection is None:
        return []

    cursor = None

    try:
        cursor = connection.cursor()

        cursor.execute("""
            SELECT id, amount, category, description,
                   expense_date, created_at
            FROM expenses
            ORDER BY expense_date DESC, id DESC
        """)

        return cursor.fetchall()

    except Exception as error:
        print("Error retrieving expenses:", error)
        return []

    finally:
        if cursor is not None:
            cursor.close()
        connection.close()


def get_total_expenses():
    """Calculate the total amount spent."""
    connection = get_connection()

    if connection is None:
        return 0

    cursor = None

    try:
        cursor = connection.cursor()

        cursor.execute("""
            SELECT COALESCE(SUM(amount), 0)
            FROM expenses
        """)

        result = cursor.fetchone()
        return result[0]

    except Exception as error:
        print("Error calculating total:", error)
        return 0

    finally:
        if cursor is not None:
            cursor.close()
        connection.close()
