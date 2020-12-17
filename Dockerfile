FROM python:3.8-alpine

RUN apk update \
    && apk add build-base

COPY requirements.txt /game/requirements.txt

WORKDIR /game

ENTRYPOINT ["nosetests" , "--with-xunit"]
CMD ["pip3 install -r requirements.txt"]
