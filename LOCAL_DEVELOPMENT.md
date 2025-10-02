# Local Development Setup

This document explains how to run the Jekyll site locally for development.

## Quick Start

1. **Run the development server:**
   ```bash
   ./run_local.sh
   ```

2. **Open your browser:**
   - Main site: http://localhost:4000
   - Symbolic Density Estimation page: http://localhost:4000/symbolic-density-estimation/

## What the Script Does

The `run_local.sh` script automatically:
- Sets up the correct Ruby environment
- Installs dependencies if needed
- Starts Jekyll with live reload enabled
- Makes the site accessible from any device on your network

## Manual Setup (if needed)

If you prefer to run Jekyll manually:

```bash
# Set up environment
export PATH="/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/3.4.0/bin:$PATH"

# Install dependencies
bundle install --gemfile Gemfile.local

# Run Jekyll
bundle exec --gemfile Gemfile.local jekyll serve --livereload --host 0.0.0.0 --port 4000
```

## Requirements

- macOS with Homebrew
- Ruby 3.4.6+ (installed via Homebrew)
- Bundler gem

## Troubleshooting

### Ruby Issues
If you get Ruby-related errors:
```bash
brew install ruby
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
```

### Dependency Issues
If dependencies are missing:
```bash
bundle install --gemfile Gemfile.local
```

### Port Already in Use
If port 4000 is busy, the script will show an error. You can:
- Kill the existing process: `lsof -ti:4000 | xargs kill -9`
- Or modify the script to use a different port

## File Structure

- `run_local.sh` - Development server script
- `Gemfile.local` - Local development dependencies
- `_pages/symbolic-density-estimation.md` - The new page we created
- `_sass/_symbolic-density-estimation.scss` - Custom styling for the page

## Stopping the Server

Press `Ctrl+C` in the terminal to stop the Jekyll server.
