#!/bin/bash

#source $BASH_ENV;

TERRAFORM_TOKEN="ijwdjX8JPdv90g.atlasv1.kI58hshfsG6bG3LR3ug0jfPp2wFKCv9eyvm1797mzYM3KgRFpjPbLMgsK4L7ka7ttdY"
TF_WORKSPACE_ID="ws-6VSrguRA56vWDJUN"

echo "Checking for previous runs to clear for $TF_ORG_NAME/$TF_WORKSPACE_NAME..."

# Get 50 most recent runs to check through
RESPONSE_RUNS=$(curl -s \
  --header "Authorization: Bearer $TERRAFORM_TOKEN" \
  --header "Content-Type: application/vnd.api+json" \
  https://app.terraform.io/api/v2/workspaces/$TF_WORKSPACE_ID/runs?page%5Bsize%5D=50)

# Filter the response to run IDs triggered by CCI that would be holding back future runs
runs=$(
  jq -rc '.data[] 
  | select (.attributes.message | startswith("CCI-")) 
  | select(.attributes.status as $status 
  | ["pending","plan_queued","planning","planned","cost_estimating","cost_estimated","policy_checking","policy_override","policy_checked"] 
  | index($status)) 
  | .id' <<< "$RESPONSE_RUNS" | tr '\n' ' ')

runs_arr=($runs)

echo "Runs IDs to discard/cancel: $runs_arr"

# Attempt to discard first - works for pending/queued runs, if fails attempt to cancel, works for runs currently being planned
for run in "${runs_arr[@]}"
do 
  if [[ ! -z $run ]]; then
    echo "Attempting to discard run with id: $run"
    DISCARD_RESPONSE=$(curl -s \
    --header "Authorization: Bearer $TERRAFORM_TOKEN" \
    --header "Content-Type: application/vnd.api+json" \
    --request POST \
    https://app.terraform.io/api/v2/runs/$run/actions/discard)
    if [[ $DISCARD_RESPONSE != null ]]; then
      echo "Unable to discard, attempting to cancel run with id: $run"
      CANCEL_RESPONSE=$(curl -s \
      --header "Authorization: Bearer $TERRAFORM_TOKEN" \
      --header "Content-Type: application/vnd.api+json" \
      --request POST \
      https://app.terraform.io/api/v2/runs/$run/actions/cancel)
      if [[ $CANCEL_RESPONSE != null ]]; then
        echo "Failed to discard/cancel https://app.terraform.io/app/$TF_ORG_NAME/$TF_WORKSPACE_NAME/runs/$run"
      else
        echo "Cancelled https://app.terraform.io/app/$TF_ORG_NAME/$TF_WORKSPACE_NAME/runs/$run"
      fi
    else
      echo "Discarded https://app.terraform.io/app/$TF_ORG_NAME/$TF_WORKSPACE_NAME/runs/$run"
    fi
  fi
done

echo "All previous runs have been cleared"