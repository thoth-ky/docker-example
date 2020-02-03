FROM ubuntu:18.04

LABEL maintainer="jmutuku95@gmail.com" Name=hello-world-docker Version=0.0.1

RUN apt-get update -y && \
    apt-get install -y python3-pip python3

WORKDIR /app

COPY ./requirements.txt /app/requirements.txt

RUN python3 -m pip install --upgrade pip && \
    python3 -m pip install -r requirements.txt

COPY . /app

CMD ["python3", "app.py"]
