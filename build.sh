#!/bin/bash
set -e

echo "🔨 Building Jesus Sayings Search..."

# Install Hex and Rebar
mix local.hex --force
mix local.rebar --force

# Get dependencies
echo "📦 Getting dependencies..."
mix deps.get --only prod

# Compile
echo "🏗️  Compiling..."
mix compile

# Deploy assets
echo "🎨 Deploying assets..."
mix assets.deploy

# Create release
echo "📦 Creating release..."
mix release jesus_sayings_search_umbrella

echo "✅ Build complete!"