FROM node:16.17.1-bullseye
WORKDIR /src

RUN apt-get clean

EXPOSE 3000

