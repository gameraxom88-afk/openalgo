#!/bin/bash
set -e

echo "Starting OpenAlgo..."

# Render gives PORT automatically
export FLASK_HOST_IP=0.0.0.0
export FLASK_PORT=${PORT:-10000}

# Auto-accept config version
export ENV_CONFIG_VERSION=1.0.6

# IMPORTANT: disable prompts
export NON_INTERACTIVE=1

echo "Using PORT=$FLASK_PORT"

# Start OpenAlgo without prompts
python run.py --yes
