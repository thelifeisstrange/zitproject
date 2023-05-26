import mysql.connector

# Connect to the database
conn = mysql.connector.connect(
    host="localhost",
    user="your_username",
    password="your_password",
    database="your_database"
)

# Create tables
with open("database.sql", "r") as file:
    sql_statements = file.read()
    cursor = conn.cursor()
    cursor.execute(sql_statements)
    conn.commit()

# Close the connection
conn.close()
