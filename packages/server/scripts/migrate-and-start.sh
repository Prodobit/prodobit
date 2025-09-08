#!/bin/bash
set -e

echo "🔄 Running database migrations..."

# Change to database directory
cd packages/database

# Run migrations
pnpm db:migrate

echo "✅ Migrations completed"

# Change back to server directory
cd ../server

# Start the server
echo "🚀 Starting server..."
node dist/index.js