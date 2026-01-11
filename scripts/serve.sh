#!/bin/bash

# Personal Website Template - Development Server
# Syncs content and starts Jekyll development server

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

# Setup Ruby environment (prefer Homebrew Ruby 3.3 on macOS)
if [ -d "/opt/homebrew/opt/ruby@3.3" ]; then
    export PATH="/opt/homebrew/opt/ruby@3.3/bin:/opt/homebrew/lib/ruby/gems/3.3.0/bin:$PATH"
    export GEM_HOME="$HOME/.gem/ruby/3.3"
    export PATH="$GEM_HOME/bin:$PATH"
elif [ -d "/opt/homebrew/opt/ruby" ]; then
    export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
fi

# First run build to sync content
"$SCRIPT_DIR/build.sh"

echo ""
echo "🚀 Starting development server..."
echo "   Open http://localhost:4000 in your browser"
echo ""

cd "$PROJECT_ROOT"

if command -v bundle &> /dev/null; then
    bundle exec jekyll serve --livereload
else
    jekyll serve --livereload
fi
