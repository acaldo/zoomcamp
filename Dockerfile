FROM python:3.9.1

RUN apt-get update && apt-get install -y wget

RUN pip install pandas sqlalchemy psycopg2

# Mantener el contenedor en ejecución
CMD tail -f /dev/null
