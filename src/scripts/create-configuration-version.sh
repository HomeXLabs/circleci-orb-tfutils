#!/bin/bash

source $BASH_ENV;

# Create the File for Upload

UPLOAD_FILE_NAME="./content-$(date +%s).tar.gz"

echo "Creating archive of Terraform files in $TF_CONTENT_DIRECTORY/"
(cd ./$TF_CONTENT_DIRECTORY && tar -zcvf "../$UPLOAD_FILE_NAME" *.tf .terraform.lock.hcl) || {
  echo "Failed to create archive!"
  exit 1
}

echo "$UPLOAD_FILE_NAME created successfully!"

# Create a New Configuration Version

echo "Creating new configuration version..."

echo '{
  "data": {
    "type": "configuration-versions",
    "attributes": {
      "auto-queue-runs": false
    } 
  }  
}' > ./create_config_version.json

RESPONSE_CONFIG=$(curl -s \
  --header "Authorization: Bearer $TERRAFORM_TOKEN" \
  --header "Content-Type: application/vnd.api+json" \
  --request POST \
  --data @create_config_version.json \
  https://app.terraform.io/api/v2/workspaces/$TF_WORKSPACE_ID/configuration-versions)

UPLOAD_URL=$(jq -r '.data.attributes."upload-url"' <<< $RESPONSE_CONFIG)

CONFIG_VERSION_ID=$(jq -r '.data.id' <<< $RESPONSE_CONFIG)

if [ $UPLOAD_URL = "null" ] || [ $CONFIG_VERSION_ID = "null" ]; then
  echo "Failed to create new configuration version!" 
  echo "$RESPONSE_CONFIG"
  exit 1
fi

echo "export TF_CONFIG_VERSION_ID=$CONFIG_VERSION_ID" >> $BASH_ENV

# Upload the Configuration Content File

echo "Uploading confiuration verison $CONFIG_VERSION_ID..."

curl -s \
  --header "Content-Type: application/octet-stream" \
  --request PUT \
  --data-binary @"$UPLOAD_FILE_NAME" \
  $UPLOAD_URL || { 
    echo "Failed to upload configuration version!"
    exit 1
  }

echo "Configuration version uploaded successfully!"
