FROM node:latest
LABEL author="Igor Becker"
LABEL vesion="1.0.0"

COPY . /var/www
WORKDIR /var/www

RUN npm install

ENTRYPOINT npm start

EXPOSE 8000