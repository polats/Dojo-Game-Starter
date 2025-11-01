#!/bin/bash

# Read world address from manifest or cached file
if [ -f ".world-address" ]; then
  WORLD_ADDRESS=$(cat .world-address)
else
  WORLD_ADDRESS=$(jq -r '.world.address' contract/manifest_dev.json)
fi

if [ -z "$WORLD_ADDRESS" ] || [ "$WORLD_ADDRESS" = "null" ]; then
  echo "Error: World address not found. Run 'yarn contracts:deploy' first."
  exit 1
fi

echo "✓ Starting Torii with world address: $WORLD_ADDRESS"
torii --world "$WORLD_ADDRESS" --config contract/torii_config.toml
