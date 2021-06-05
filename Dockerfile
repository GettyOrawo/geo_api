FROM elixir:1.11-alpine

RUN apk update && \
  apk add postgresql-client

RUN apk add git

RUN mkdir /app
WORKDIR /app

COPY mix.exs mix.lock ./
RUN mix do local.hex --force, local.rebar --force, deps.get, deps.compile

COPY . .

RUN chmod +x /app/entrypoint.sh

CMD ["/app/entrypoint.sh"]