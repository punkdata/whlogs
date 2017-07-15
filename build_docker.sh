#!/bin/bash

# Get Login Session from AWS ECR & Execute
docker build --rm=true -t whlogs .
docker tag whlogs:latest 146563464137.dkr.ecr.us-east-1.amazonaws.com/whlogs:latest
output=$(aws --profile datapunks ecr get-login --no-include-email --region us-east-1 ) && $output
docker push 146563464137.dkr.ecr.us-east-1.amazonaws.com/whlogs:latest
cp config.json ~/Dropbox/stuff/creds/whlogs/
echo "the docker build is complete"