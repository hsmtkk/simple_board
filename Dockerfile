FROM ruby:2.7.2

RUN mkdir /opt/simple_board

WORKDIR /opt/simple_board

COPY Gemfile /opt/simple_board/Gemfile
COPY Gemfile.lock /opt/simple_board/Gemfile.lock

RUN bundle install -j4

COPY . /opt/simple_board

EXPOSE 80

ENTRYPOINT ["bundle", "exec", "rails", "server", "-b", "0.0.0.0", "-p", "80"]
