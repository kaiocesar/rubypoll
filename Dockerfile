FROM ruby:2.6.3-alpine

RUN apk add --update --no-cache bash build-base nodejs sqlite-dev tzdata postgresql-dev yarn

RUN gem install bundler:2

RUN mkdir /pollapp

WORKDIR /pollapp

COPY Gemfile* /pollapp/

RUN bundle install

COPY . /pollapp

ENV PATH=./pollapp/bin:$PATH

CMD ["rails", "console"]