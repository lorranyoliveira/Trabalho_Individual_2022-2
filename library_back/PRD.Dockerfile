# syntax=docker/dockerfile:1

FROM python:3.8-buster

WORKDIR /app

ENV PYTHONUNBUFFERED 1

EXPOSE 8000

COPY ./requirements.txt /app/requirements.txt

RUN pip3 install --upgrade pip==21.* && \
    pip3 install -r requirements.txt

COPY . .
