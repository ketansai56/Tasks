From ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update&& apt-get upgrade -y
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN apt-get install -y curl wget git 

RUN pip3 install flask
RUN pip3 install requests

WORKDIR /app

COPY . /app

EXPOSE 5000

CMD ["python3", "app.py"]

