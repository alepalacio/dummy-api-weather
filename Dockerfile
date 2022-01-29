FROM python:3.9.5-slim-buster

# Keeps Python from generating .pyc files in the container
ENV PYTHONDONTWRITEBYTECODE=1

# Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED=1

WORKDIR /opt/app/

COPY requirements.txt /opt/app/

RUN apt-get -q -y update\
    && pip install --upgrade pip\
    && pip install -r requirements.txt

COPY . /opt/app/

CMD python api.py