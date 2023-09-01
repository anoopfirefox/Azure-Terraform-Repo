#!/bin/sh
set -e
eval "$(jq -r '@sh "export SCOPE=\(.scope)"')"
TOKEN=$(az account get-access-token --scope $SCOPE  | jq -r .accessToken)
jq -n --arg token "$TOKEN" '{"token":$token}'