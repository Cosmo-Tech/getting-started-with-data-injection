#!/usr/bin/env bash

curl -sLo "$MODEL_FILE" "$MODEL_URI"
az config set extension.use_dynamic_install=yes_without_prompt
az dt model create -n "$MODEL_INSTANCES_NAME" --models "$MODEL_FILE"
