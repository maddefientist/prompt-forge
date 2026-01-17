#!/bin/bash

# Prompt Forge Setup Script
# Installs the global CLAUDE.md for Claude Code

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CLAUDE_DIR="$HOME/.claude"

echo "Prompt Forge Setup"
echo "=================="
echo ""

# Create ~/.claude if it doesn't exist
if [ ! -d "$CLAUDE_DIR" ]; then
    echo "Creating $CLAUDE_DIR..."
    mkdir -p "$CLAUDE_DIR"
fi

# Backup existing CLAUDE.md if present
if [ -f "$CLAUDE_DIR/CLAUDE.md" ]; then
    BACKUP="$CLAUDE_DIR/CLAUDE.md.backup.$(date +%Y%m%d%H%M%S)"
    echo "Backing up existing CLAUDE.md to $BACKUP"
    cp "$CLAUDE_DIR/CLAUDE.md" "$BACKUP"
fi

# Copy CLAUDE.md
echo "Installing CLAUDE.md to $CLAUDE_DIR..."
cp "$SCRIPT_DIR/CLAUDE.md" "$CLAUDE_DIR/CLAUDE.md"

echo ""
echo "Done! Prompt Forge is now active for all Claude Code sessions."
echo ""
echo "Usage:"
echo "  claude \"new project: your idea here\""
echo ""
echo "Commands:"
echo "  new project: [idea]  - Start the pipeline"
echo "  validate this        - Validate a prompt"
echo "  show library         - List patterns"
echo ""
