FROM python:3.8.0

ENV PYTHONUNBUFFERED 1

RUN mkdir /code

WORKDIR /code

RUN pip install --upgrade pip

RUN apt-get -y update && apt-get -y install nginx

ADD requirements.txt ./requirements.txt

RUN pip3 install -r requirements.txt

ADD . ./

RUN chmod +x ./docker-entrypoint.sh
RUN chmod +x ./beat-entrypoint.sh