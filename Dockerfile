FROM ruby:2.6.3-alpine

RUN apk add --update --no-cache \
      make \
      build-base \
      postgresql-dev \
      nodejs \
      tzdata \
      yarn

RUN gem install bundler:2.0.2

EXPOSE 3000

WORKDIR /app
