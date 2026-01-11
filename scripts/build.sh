#!/bin/bash

# Personal Website Template - Build Script
# This script syncs content to Jekyll structure and builds the site

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

echo "🔧 Building Personal Website..."

# Step 1: Sync template directories
echo "📁 Syncing template directories..."
rm -rf "$PROJECT_ROOT/_includes" "$PROJECT_ROOT/_layouts" "$PROJECT_ROOT/_tabs" "$PROJECT_ROOT/_data"
cp -r "$PROJECT_ROOT/template/_includes" "$PROJECT_ROOT/_includes"
cp -r "$PROJECT_ROOT/template/_layouts" "$PROJECT_ROOT/_layouts"
cp -r "$PROJECT_ROOT/template/_tabs" "$PROJECT_ROOT/_tabs"
echo "   ✓ _includes, _layouts, _tabs"

# Step 2: Sync content YAML files to _data/
echo "📄 Syncing content files..."
mkdir -p "$PROJECT_ROOT/_data"

# Copy personal content YAMLs
for file in profile experience education skills certifications projects publications community; do
    if [ -f "$PROJECT_ROOT/content/${file}.yml" ]; then
        cp "$PROJECT_ROOT/content/${file}.yml" "$PROJECT_ROOT/_data/"
        echo "   ✓ ${file}.yml"
    fi
done

# Copy template config YAMLs (share, contact)
for file in share contact; do
    if [ -f "$PROJECT_ROOT/template/_data/${file}.yml" ]; then
        cp "$PROJECT_ROOT/template/_data/${file}.yml" "$PROJECT_ROOT/_data/"
    fi
done

# Step 3: Sync content assets
echo "🖼️  Syncing assets..."
mkdir -p "$PROJECT_ROOT/assets/img/projects"
mkdir -p "$PROJECT_ROOT/assets/img/community"
mkdir -p "$PROJECT_ROOT/cv"

if [ -d "$PROJECT_ROOT/content/assets/projects" ]; then
    cp -r "$PROJECT_ROOT/content/assets/projects/"* "$PROJECT_ROOT/assets/img/projects/" 2>/dev/null || true
fi

if [ -d "$PROJECT_ROOT/content/assets/community" ]; then
    cp -r "$PROJECT_ROOT/content/assets/community/"* "$PROJECT_ROOT/assets/img/community/" 2>/dev/null || true
fi

if [ -d "$PROJECT_ROOT/content/assets/cv" ]; then
    cp -r "$PROJECT_ROOT/content/assets/cv/"* "$PROJECT_ROOT/cv/" 2>/dev/null || true
fi

# Step 4: Build Jekyll site
echo "🏗️  Building Jekyll site..."
cd "$PROJECT_ROOT"

if command -v bundle &> /dev/null; then
    bundle exec jekyll build
else
    jekyll build
fi

echo ""
echo "✅ Build complete! Output in _site/"
