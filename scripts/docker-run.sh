#!/usr/bin/env bash
# Build the image and open a shell in a container with the repo mounted.
# Usage: scripts/docker-run.sh [command...]
set -e
cd "$(dirname "$0")/.."
docker build -t team-sdn .
docker run --rm -it --privileged \
    -v /lib/modules:/lib/modules:ro \
    -v "$PWD/topology:/app/topology" \
    -v "$PWD/scripts:/app/scripts" \
    -v "$PWD/results:/app/results" \
    team-sdn "${@:-bash}"
