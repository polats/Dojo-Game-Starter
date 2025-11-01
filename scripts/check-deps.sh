#!/bin/bash

echo "Checking Dojo dependencies..."

command -v katana >/dev/null 2>&1 || {
  echo "Error: katana not found. Install Dojo: https://book.dojoengine.org/getting-started/quick-start.html"
  exit 1
}

command -v sozo >/dev/null 2>&1 || {
  echo "Error: sozo not found. Install Dojo: https://book.dojoengine.org/getting-started/quick-start.html"
  exit 1
}

command -v torii >/dev/null 2>&1 || {
  echo "Error: torii not found. Install Dojo: https://book.dojoengine.org/getting-started/quick-start.html"
  exit 1
}

command -v jq >/dev/null 2>&1 || {
  echo "Error: jq not found. Install with: brew install jq"
  exit 1
}

echo "✓ All dependencies found"
