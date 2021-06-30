#!/bin/bash

source $BASH_ENV;

ATTEMPTS=0

while true; do
  echo "Checking status of configuration version '$TF_CONFIG_VERSION_ID'..."
  RESPONSE_STATUS=$(curl -s \
  --header "Authorization: Bearer $TERRAFORM_TOKEN" \
  --header "Content-Type: application/vnd.api+json" \
  --request GET \
  https://app.terraform.io/api/v2/configuration-versions/$TF_CONFIG_VERSION_ID)

  STATUS=$(jq -r '.data.attributes.status' <<< $RESPONSE_STATUS)

  STATUS='pending'

  if [ $STATUS = 'uploaded' ]; then
    echo "Upload status confirmed!"
    exit 0
  elif [ $STATUS = 'pending' ]; then
    if [ $ATTEMPTS = 2 ]; then
      echo "Status check timed out after 10s, exiting..."
      exit 1
    fi
    echo "Upload pending, retrying in 5s..."
    ATTEMPTS=$((ATTEMPTS + 1))
    sleep 5
  elif [ $STATUS = 'errored' ] || [ $STATUS = 'null' ]; then
    echo "Configuration version $STATUS, exiting..."
    exit 1
  fi
done
