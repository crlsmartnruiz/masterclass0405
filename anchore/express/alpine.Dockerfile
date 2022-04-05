FROM alpine:latest

RUN apk update;apk add nodejs npm

COPY package*.json /app/

WORKDIR /app

RUN npm i

COPY . /app

CMD ["npm", "start"]