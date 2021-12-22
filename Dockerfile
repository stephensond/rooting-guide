FROM python:latest

WORKDIR /cbb

RUN pip install --upgrade pip && pip install psycopg2 python-dotenv

RUN python graph.py