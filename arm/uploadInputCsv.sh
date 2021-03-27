#!/usr/bin/env bash

function upload_file {
    local input_url="$1"
    local filename="$2"
    local storage_account="$3"
    local storage_key="$4"
    local container_name="$5"
    curl -sLo "$filename" "$input_url/$filename"
    az storage blob upload \
       --container-name "$container_name" \
       --file "$filename" \
       --name "$filename" \
       --account-name "$storage_account" \
       --account-key "$storage_key"
}

upload_file "$INPUT_URL" "$BARS_DATASET" "$STORAGE_ACCOUNT" "$STORAGE_KEY" "$CONTAINER_NAME"
upload_file "$INPUT_URL" "$CUSTOMERS_DATASET" "$STORAGE_ACCOUNT" "$STORAGE_KEY" "$CONTAINER_NAME"
upload_file "$INPUT_URL" "$CUSTOMER_RELATIONSHIPS_DATASET" "$STORAGE_ACCOUNT" "$STORAGE_KEY" "$CONTAINER_NAME"

