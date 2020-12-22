FROM python:latest

WORKDIR /cbb

RUN pip install --upgrade pip && pip install psycopg2 python-dotenv

CMD tail -f /dev/null
