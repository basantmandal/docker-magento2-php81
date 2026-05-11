#!/usr/bin/env bash

set -euo pipefail

IMAGE="basantmandal/hk2-php8.1-fpm"
VERSION="3.1.0"
TAG="${IMAGE}:${VERSION}"

echo "🔍 Checking if image exists locally..."

if ! docker image inspect "$TAG" > /dev/null 2>&1; then
    echo "❌ Image not found: $TAG"
    echo "👉 Build the image first before pushing"
    exit 1
fi

echo "🔐 Checking Docker login..."
if ! docker info | grep -q "Username"; then
    echo "❌ Not logged in to Docker Hub"
    echo "👉 Run: docker login"
    exit 1
fi

echo "🚀 Pushing image: $TAG"
docker push "$TAG"

echo "✅ Push successful"