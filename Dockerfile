FROM python:latest

WORKDIR /cbb

COPY graph.py /cbb/
COPY entrypoint.sh /cbb/

RUN pip install --upgrade pip && pip install psycopg2 python-dotenv

ENTRYPOINT [ "entrypoint.sh" ]

RUN python graph.py
