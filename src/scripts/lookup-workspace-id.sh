#!/bin/bash

# Lookup workspace ID

echo "Looking up workspace ID for $TF_ORG_NAME/$TF_WORKSPACE_NAME..."

RESPONSE_WORKSPACE=$(curl -s \
  --header "Authorization: Bearer $TERRAFORM_TOKEN" \
  --header "Content-Type: application/vnd.api+json" \
  https://app.terraform.io/api/v2/organizations/$TF_ORG_NAME/workspaces/$TF_WORKSPACE_NAME)

WORKSPACE_ID=$(jq -r '.data.id' <<< $RESPONSE_WORKSPACE) >> $BASH_ENV

if [ $WORKSPACE_ID = "null" ]; then
  echo "Workspace ID not found!" "$RESPONSE_WORKSPACE"
  exit 1
fi

echo "export TF_WORKSPACE_ID=$WORKSPACE_ID" >> $BASH_ENV

echo "Workspace ID found: $WORKSPACE_ID"
