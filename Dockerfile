FROM ruby:2.6.3-alpine

RUN apk add --update --no-cache \
      bash binutils-gold build-base \
      curl file g++ gcc libstdc++ libffi-dev \
      libc-dev linux-headers libxml2-dev libgcrypt-dev \
      make netcat-openbsd pkgconfig python nodejs sqlite-dev tzdata postgresql-dev yarn

RUN gem install bundler:2

RUN mkdir /pollapp

WORKDIR /pollapp

COPY Gemfile* /pollapp/

RUN bundle install

COPY . /pollapp

ENV PATH=./pollapp/bin:$PATH

CMD ["rails", "console"]