#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t house_predictor .

# Step 2:
# List docker images
docker image ls

# Step 3:
# Ru  flask app
docker run -p 8000:80 --name house_predictor house_predictor
