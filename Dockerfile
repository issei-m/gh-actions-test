# syntax = docker/dockerfile:1.3-labs

FROM ruby:3.2.2-alpine3.16 as base
RUN apk --no-cache upgrade
RUN apk add --no-cache tzdata build-base
RUN gem install rails
RUN cd /opt && rails new --skip-git --api ./app
WORKDIR /opt/app
