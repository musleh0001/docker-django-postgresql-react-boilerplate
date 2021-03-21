FROM python:3.9.2-slim-buster
MAINTAINER Md Musleh Uddin

ENV PYTHONUNBUFFERED 1

WORKDIR /app
COPY requirements.txt /app/
RUN pip install -r requirements.txt 
COPY . /app/

RUN mkdir -p /vol/web/media
RUN mkdir -p /vol/web/static
