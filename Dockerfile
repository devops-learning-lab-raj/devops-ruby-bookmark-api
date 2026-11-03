FROM ruby:3.3-alpine
WORKDIR /app
COPY Gemfile ./
RUN bundle install
COPY app.rb ./
COPY config ./config
COPY sql ./sql
EXPOSE 4567
CMD ["ruby", "app.rb", "-o", "0.0.0.0"]