FROM node:alpine as build

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY ./package.json /app/
RUN yarn --silent

COPY . /app
RUN yarn build

EXPOSE 80
