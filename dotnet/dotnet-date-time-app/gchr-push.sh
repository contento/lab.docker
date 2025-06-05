#!/bin/bash

# Usage: ./gchr-push.sh [docker|podman] [tag]
ENGINE=${1:-podman} # Default to podman if no parameter is given
IMAGE_TAG=${2:-latest} # Default to 'latest' if no tag is given

GITHUB_USER="contento"
IMAGE_NAME="dotnet-date-time-app"
GHCR="ghcr.io"
FULL_IMAGE="$GHCR/$GITHUB_USER/$IMAGE_NAME:$IMAGE_TAG"

if [ -z "$GITHUB_TOKEN" ]; then
  echo "Please set the GITHUB_TOKEN environment variable with your GitHub Personal Access Token."
  exit 1
fi

echo "Using container engine: $ENGINE"
echo "Using image tag: $IMAGE_TAG"

$ENGINE build -t $FULL_IMAGE .
echo $GITHUB_TOKEN | $ENGINE login $GHCR -u $GITHUB_USER --password-stdin
$ENGINE push $FULL_IMAGE

echo "Image pushed to $FULL_IMAGE"
