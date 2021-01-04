# https://docs.docker.com/engine/reference/builder
FROM node:alpine

RUN mkdir /seed
WORKDIR /seed

COPY ./seed  .

# port defined in package.json -> "start"
EXPOSE 8000

CMD npm start
