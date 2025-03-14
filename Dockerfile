FROM python:3.10.8

RUN apt-get update && apt-get -y upgrade

RUN python -m pip install --upgrade pip
COPY requirements.txt /tmp
RUN python -m pip install -r /tmp/requirements.txt
