FROM ruby:2.7.2

RUN mkdir /opt/simple_board

COPY . /opt/simple_board

WORKDIR /opt/simple_board

RUN bundle install -j4

EXPOSE 80

ENTRYPOINT ["bundle", "exec", "rails", "server", "-e", "production", "-b", "0.0.0.0", "-p", "80"]
