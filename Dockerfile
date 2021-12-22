FROM python:latest

WORKDIR /cbb

COPY graph.py /cbb/
COPY entrypoint.sh /cbb/

RUN pip install --upgrade pip && pip install psycopg2 python-dotenv

RUN chmod -R 777 entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
