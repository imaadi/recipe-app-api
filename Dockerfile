FROM python:3.8-alpine
MAINTAINER Aaditya Kumar Dixit

ENV PYTHONBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
User user