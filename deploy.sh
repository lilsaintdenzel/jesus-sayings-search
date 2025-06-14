#!/bin/bash

echo "🚀 Jesus Sayings Search - Quick Deploy Script"
echo "=============================================="

# Check if flyctl is installed
if ! command -v flyctl &> /dev/null; then
    echo "❌ flyctl not found. Please install it first:"
    echo "   brew install flyctl"
    echo "   or visit: https://fly.io/docs/hands-on/install-flyctl/"
    exit 1
fi

# Check if user is logged in
if ! flyctl auth whoami &> /dev/null; then
    echo "🔐 Please log in to Fly.io first:"
    echo "   flyctl auth login"
    exit 1
fi

echo "✅ Fly.io CLI is ready!"

# Check if app exists
if [ ! -f "fly.toml" ]; then
    echo "🆕 Initializing new Fly.io app..."
    flyctl launch --no-deploy
    echo ""
fi

# Generate secret if not exists
echo "🔑 Setting up secrets..."
SECRET_KEY_BASE=$(mix phx.gen.secret)
flyctl secrets set SECRET_KEY_BASE="$SECRET_KEY_BASE"

echo "🔨 Building and deploying..."
flyctl deploy

echo ""
echo "🎉 Deployment complete!"
echo ""
echo "Next steps:"
echo "1. Run migrations: flyctl ssh console -C '/app/bin/migrate'"
echo "2. Seed database: flyctl ssh console -C '/app/bin/jesus_sayings_search_umbrella eval \"JesusSayingsSearch.Release.seed()\"'"
echo "3. Visit your app: https://$(grep '^app' fly.toml | cut -d'"' -f2).fly.dev"
echo ""
echo "🙏 Your Jesus Sayings Search app is now live!"