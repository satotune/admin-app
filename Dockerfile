FROM ruby

RUN apt update -qq && apt install -y build-essential libpq-dev nodejs
RUN mkdir /root/rails-app
WORKDIR /root/rails-app
ADD ./rails-app/Gemfile /root/rails-app/Gemfile
ADD ./rails-app/Gemfile.lock /root/rails-app/Gemfile.lock
RUN cd /root/rails-app && bundle install
ADD ./rails-app /root/rails-app
