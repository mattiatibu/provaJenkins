FROM python:3.11.2-slim-bullseye as base
WORKDIR /prova
ENV FLASK_APP=app.py
COPY requirements.txt requirements.txt
RUN sudo pip3 install -r requirements.txt

COPY . .

ENV FLASK_APP=app.py
EXPOSE 5000



CMD python3 app.py