#!/bin/bash

docker buildx build --push --platform linux/arm/v7,linux/arm64/v8,linux/amd64 -t josiahsayers15/ia-cli:latest -t josiahsayers15/ia-cli:"${VERSION:?}" .
