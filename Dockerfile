FROM ruby2.5.1

RUN apt update -qq && apt install -y build-essential libpq-dev nodejs
RUN mkdir /root/rails-app
WORKDIR /root/rails-app
COPY ./rails-app/Gemfile.lock /root/rails-app/Gemfile.lock
COPY ./rails-app/Gemfile /root/rails-app/Gemfile
RUN bundle install
COPY ./rails-app /root/rails-app
