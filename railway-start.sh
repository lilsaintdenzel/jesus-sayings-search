#!/bin/bash

# Railway startup script for Jesus Sayings Search
echo "🚀 Starting Jesus Sayings Search on Railway..."

# Set the release path
RELEASE_PATH="_build/prod/rel/jesus_sayings_search_umbrella/bin/jesus_sayings_search_umbrella"

# Debug environment variables
echo "🔍 Environment Check:"
echo "PORT: $PORT"
echo "RAILWAY_PUBLIC_DOMAIN: $RAILWAY_PUBLIC_DOMAIN"
echo "DATABASE_URL: ${DATABASE_URL:0:20}..." # Show first 20 chars only

# Check if DATABASE_URL is set
if [ -z "$DATABASE_URL" ]; then
    echo "❌ ERROR: DATABASE_URL environment variable is not set"
    exit 1
fi

echo "📊 Database URL is configured"

# Run migrations
echo "🔄 Running database migrations..."
$RELEASE_PATH eval "JesusSayingsSearch.Release.migrate()"

if [ $? -eq 0 ]; then
    echo "✅ Migrations completed successfully"
else
    echo "❌ Migration failed"
    exit 1
fi

# Run seeding
echo "🌱 Running database seeding (551 Jesus sayings)..."
$RELEASE_PATH eval "JesusSayingsSearch.Release.seed()"

if [ $? -eq 0 ]; then
    echo "✅ Seeding completed successfully"
else
    echo "❌ Seeding failed"
    exit 1
fi

# Start the application
echo "🏁 Starting the web application..."
exec $RELEASE_PATH start