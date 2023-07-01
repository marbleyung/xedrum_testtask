FROM python:3.10-alpine

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /django

RUN apk update && apk add --no-cache postgresql-dev gcc musl-dev 

COPY . .

RUN pip install -r req.txt


