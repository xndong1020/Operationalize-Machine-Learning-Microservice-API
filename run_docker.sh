#!/usr/bin/env bash

PORT=8000
dockerpath=isdance/ml-api
echo "Port: $PORT"

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t $dockerpath:latest .

# Step 2: 
# List docker images
docker images ls

# Step 3: 
# Run flask app
docker run -p $PORT:80 --name ml-api --detach isdance/ml-api:latest
