FROM python:3.8-alpine

RUN apk update \
    && apk add build-base \
    && apk add python3 nose

COPY requirements.txt /game/requirements.txt

WORKDIR /game

CMD ["pip3 install -r requirements.txt"]
