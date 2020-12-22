# Goal: create graph from db

import psycopg2
from dotenv import load_dotenv
import os

load_dotenv()
conn = psycopg2.connect(
    host=os.getenv("HOST"),
    database=os.getenv("DATABASE"),
    user=os.getenv("USER"),
    password=os.getenv("PASSWORD"),
    port=os.getenv("PORT"))

cur = conn.cursor()
cur.execute("SELECT * from games")
games = cur.fetchall()
print(games)