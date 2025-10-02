#!/bin/bash

# Jekyll Local Development Server Script
# This script sets up the environment and runs Jekyll locally

set -e  # Exit on any error

echo "🚀 Starting Jekyll Local Development Server..."
echo "=============================================="

# Check if we're in the right directory
if [ ! -f "_config.yml" ]; then
    echo "❌ Error: Please run this script from the root of the Jekyll repository"
    exit 1
fi

# Set up environment variables
export PATH="/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/3.4.0/bin:$PATH"

# Check if Ruby is available
if ! command -v ruby &> /dev/null; then
    echo "❌ Error: Ruby not found. Please install Ruby first."
    echo "   Run: brew install ruby"
    exit 1
fi

# Check if bundle is available
if ! command -v bundle &> /dev/null; then
    echo "❌ Error: Bundler not found. Please install bundler first."
    echo "   Run: gem install bundler"
    exit 1
fi

# Install dependencies if needed
if [ ! -d "vendor/bundle" ]; then
    echo "📦 Installing dependencies..."
    bundle install --gemfile Gemfile.local
fi

# Check if Jekyll is available
if ! bundle exec --gemfile Gemfile.local jekyll --version &> /dev/null; then
    echo "❌ Error: Jekyll not found. Installing dependencies..."
    bundle install --gemfile Gemfile.local
fi

echo "✅ Environment ready!"
echo ""
echo "🌐 Starting Jekyll server..."
echo "   Local URL: http://localhost:4000"
echo "   Symbolic Density Estimation: http://localhost:4000/symbolic-density-estimation/"
echo "   Live Reload: Enabled"
echo ""
echo "Press Ctrl+C to stop the server"
echo "=============================================="

# Run Jekyll server
bundle exec --gemfile Gemfile.local jekyll serve --livereload --host 0.0.0.0 --port 4000
