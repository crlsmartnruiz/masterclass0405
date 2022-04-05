FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update;apt install nodejs npm -y

COPY package*.json /app/

WORKDIR /app

RUN npm i

COPY . /app

CMD ["npm", "start"]