FROM python:slim-buster

ENV FLASK_APP=app.py
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

ENV FLASK_APP=app.py
EXPOSE 5000



CMD python3 app.py