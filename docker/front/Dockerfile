FROM node:18.17.1-alpine

WORKDIR /app

RUN apk update && \
    apk add python3 make g++ && \
    npm install -g npm && \
    npm install -g vue-cli
