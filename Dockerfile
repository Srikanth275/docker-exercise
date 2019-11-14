FROM python:3.7-slim-buster

RUN apt-get update && apt-get install -y curl

COPY requirements.txt /tmp/

RUN pip install -r /tmp/requirements.txt

ENV PORT="3000"

EXPOSE ${PORT}

RUN useradd --create-home pythonappuser
WORKDIR /home/pythonappuser

COPY startup.sh .
COPY app.py .

RUN chmod +x startup.sh && chmod +x app.py && chown -R pythonappuser:pythonappuser .
USER pythonappuser

CMD ./startup.sh
