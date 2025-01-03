#!/bin/bash

# Check if the correct number of arguments is passed
if [ "$#" -ne 4 ]; then
  echo "Usage: ./builder.sh <GitHub Repo> <Docker Hub Repo> <Docker Username> <Docker Password>"
  exit 1
fi

GITHUB_REPO=$1
DOCKER_HUB_REPO=$2
DOCKER_USERNAME=$3
DOCKER_PASSWORD=$4

echo "Cloning repository https://github.com/$GITHUB_REPO..."
git clone "https://github.com/$GITHUB_REPO.git"
if [ $? -ne 0 ]; then
  echo "Error: Failed to clone the repository."
  exit 1
fi

REPO_NAME=$(basename "$GITHUB_REPO")

cd "$REPO_NAME" || exit

echo "Building Docker image..."
docker build -t "$DOCKER_HUB_REPO" .
if [ $? -ne 0 ]; then
  echo "Error: Docker build failed."
  exit 1
fi

echo "Logging into Docker Hub..."
docker login -u "$DOCKER_USERNAME" -p "$DOCKER_PASSWORD"
if [ $? -ne 0 ]; then
  echo "Error: Docker login failed."
  exit 1
fi

echo "Pushing image to Docker Hub..."
docker push "$DOCKER_HUB_REPO"
if [ $? -ne 0 ]; then
  echo "Error: Docker push failed."
  exit 1
fi

cd ..
rm -rf "$REPO_NAME"

echo "Docker image has been pushed to Docker Hub: $DOCKER_HUB_REPO"
