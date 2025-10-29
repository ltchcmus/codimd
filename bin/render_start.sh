#!/bin/bash

set -euo pipefail

echo "Starting CodiMD on Render..."

# Run database migrations
echo "Running database migrations..."
npx sequelize-cli db:migrate || {
  echo "Migration failed, but continuing..."
}

# Start the application
echo "Starting application..."
node app.js
