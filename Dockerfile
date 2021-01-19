FROM ruby:2.7.2

RUN mkdir /opt/simple_board

COPY Gemfile /opt/simple_board/Gemfile
COPY Gemfile.lock /opt/simple_board/Gemfile.lock
COPY simple_board /opt/simple_board/simple_board

WORKDIR /opt/simple_board

RUN bundle install -j4

WORKDIR /opt/simple_board/simple_board

EXPOSE 80

ENTRYPOINT ["bundle", "exec", "rails", "server", "-b", "0.0.0.0", "-p", "80"]
