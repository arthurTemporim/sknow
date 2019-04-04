FROM python:3.6-slim

RUN apt update && apt install -y iputils-ping procps

RUN python -m pip install --upgrade pip

ADD ./requirements.txt /tmp

RUN pip install -r /tmp/requirements.txt

WORKDIR api

COPY ./api/ /api/

CMD "python api.py"
