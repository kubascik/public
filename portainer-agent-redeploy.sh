#!/bin/bash

set -e

AGENT_CONTAINER_NAME="portainer_agent"
REDEPLOY_SCRIPT_URL="https://raw.githubusercontent.com/kubascik/public/main/portainer-agent.sh"

echo "Stopping Portainer agent..."
docker stop "$AGENT_CONTAINER_NAME" || echo "Container not running."

echo "Removing Portainer agent..."
docker rm "$AGENT_CONTAINER_NAME" || echo "Container not found."

echo "Downloading and running the new deployment script from GitHub..."
curl -fsSL "$REDEPLOY_SCRIPT_URL" | bash