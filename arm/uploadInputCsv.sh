#!/usr/bin/env bash

curl -sLo "$BLOB_NAME" "$INPUT_URI"
az storage blob upload \
   --container-name "$CONTAINER_NAME" \
   --file "$BLOB_NAME" \
   --name "$BLOB_NAME" \
   --account-name "$STORAGE_ACCOUNT" \
   --account-key "$STORAGE_KEY"
