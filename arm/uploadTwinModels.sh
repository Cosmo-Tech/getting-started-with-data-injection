#!/usr/bin/env bash

az extension add -y --name azure-iot
curl -sLo "$MODEL_FILE" "$MODEL_URI"
az dt model create -n "$MODEL_INSTANCES_HOSTNAME" --models "$MODEL_FILE" --resource-group "$RESOURCE_GROUP"
