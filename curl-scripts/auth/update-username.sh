#!/bin/bash

API="http://localhost:4741"
URL_PATH="/update-username"

curl "${API}${URL_PATH}/" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
--header "Authorization: Bearer ${TOKEN}" \
--data '{
    "username": "'"${USERNAME}"'"
  }'

echo
