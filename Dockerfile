FROM ruby:3.1.2

RUN apt update && apt install nano

WORKDIR /var/app

COPY . /var/app

RUN bundle install

CMD ["rspec"]