#!/bin/ash
# Docker entrypoint script.

# Wait until Postgres is ready
while ! pg_isready -q --host=db --port=5432 --username=postgres
do
  echo "$(date) - waiting for database to start"
  sleep 2
done

# Create, migrate, and seed database if it doesn't exist.
if [[ -z `psql -Atqc "\\list postgres"` ]]; then
  echo "Database postgres does not exist. Creating..."
  mix ecto.create
  mix ecto.migrate
  echo "Database $PGDATABASE created."
fi

exec mix run --no-halt