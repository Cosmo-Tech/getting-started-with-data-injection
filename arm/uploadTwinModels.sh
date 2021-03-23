#!/usr/bin/env bash

curl -sLo "$MODEL_FILE" "$MODEL_URI"
az dt model create -n "$MODEL_INSTANCES_NAME" --models "$MODEL_FILE"
