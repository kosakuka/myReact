FROM ubuntu:latest
WORKDIR /root/src

RUN apt update && apt-get update
RUN apt install -y git curl wget nano vim
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash -
RUN apt-get install -y nodejs
RUN npm install -g create-react-app
RUN npm install -g yarn