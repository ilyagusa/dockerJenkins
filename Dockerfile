FROM python:3.8-alpine

RUN apk update \
    && apk add build-base

COPY requirements.txt /game/requirements.txt

WORKDIR /game

Run "pip3 install -r requirements.txt"
