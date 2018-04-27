FROM ruby:2.4.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /ccm
WORKDIR /ccm
COPY Gemfile /ccm/Gemfile
COPY Gemfile.lock /ccm/Gemfile.lock
RUN gem install bundler
RUN bundle install
COPY . /ccm
