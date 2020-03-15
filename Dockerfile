FROM ruby:2.6.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /go-mini-resto
WORKDIR /go-mini-resto
COPY Gemfile /go-mini-resto/Gemfile
COPY Gemfile.lock /go-mini-resto/Gemfile.lock
COPY . /go-mini-resto

RUN gem install bundler:2.1.4
RUN gem install rails:6.0.2.1
RUN bundle install
RUN rails db:create
RUN rails db:migrate

EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]