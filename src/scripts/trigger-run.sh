
#!/bin/bash

source $BASH_ENV;

# Queue run 

echo "Queueing run on Terraform Cloud ($TF_ORG_NAME/$TF_WORKSPACE_NAME)..."

GIT_COMMIT_DESC=$(git log --format=%B -n 1 $CIRCLE_SHA1)

RUN_JSON_STRING=$( jq -n \
--arg message "CCI-$CIRCLE_BUILD_NUM ($CIRCLE_USERNAME@$CIRCLE_BRANCH): $GIT_COMMIT_DESC" \
--arg workspace "$TF_WORKSPACE_ID" \
--arg config "$TF_CONFIG_VERSION_ID" \
'{
  "data": {
    "attributes": {
      "message": $message
    },
    "type":"runs",
    "relationships": {
      "workspace": {
        "data": {
          "type": "workspaces",
          "id": $workspace
        }
      },
      "configuration-version": {
        "data": {
          "type": "configuration-versions",
          "id": $config
        }
      }
    }
  }
}')

echo "$RUN_JSON_STRING" > ./create_run.json

RESPONSE_RUN=$(curl -s \
  --header "Authorization: Bearer $TERRAFORM_TOKEN" \
  --header "Content-Type: application/vnd.api+json" \
  --request POST \
  --data @create_run.json \
  https://app.terraform.io/api/v2/runs)

RUN_ID=$(jq -r '.data.id' <<< $RESPONSE_RUN)

if [ $RUN_ID = "null" ]; then
  echo "Failed to trigger run!" 
  echo "$RESPONSE_RUN"
  exit 1
fi

echo "Run queued on Terraform Cloud: https://app.terraform.io/app/$TF_ORG_NAME/$TF_WORKSPACE_NAME/runs/$RUN_ID"