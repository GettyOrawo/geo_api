FROM elixir:1.11-alpine

RUN apk add git

RUN mkdir /app
WORKDIR /app

COPY mix.exs mix.lock ./
RUN mix do local.hex --force, local.rebar --force, deps.get, deps.compile

COPY . .

CMD ["mix", "run --no-halt"]