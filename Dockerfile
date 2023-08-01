FROM python:3.11.4-slim-bullseye
WORKDIR /prova
ENV FLASK_APP=app.py
COPY requirements.txt requirements.txt
RUN pip3 install --user -r requirements.txt

COPY . .

ENV FLASK_APP=app.py
EXPOSE 5000



CMD python3 app.py