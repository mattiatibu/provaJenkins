FROM python:3.11.4-slim-bullseye
RUN mkdir /home/jenkins
RUN groupadd -g 984 jenkins
RUN useradd -r -u 984 -g jenkins -d /home/jenkins jenkins
RUN chown jenkins:jenkins /home/jenkins
USER jenkins
WORKDIR /home/jenkins
ENV FLASK_APP=app.py
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

ENV FLASK_APP=app.py
EXPOSE 5000



CMD python3 app.py