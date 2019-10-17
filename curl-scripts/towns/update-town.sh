#!/bin/bash

curl "http://localhost:4741/towns/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "town": {
      "name": "'"${NAME}"'",
      "town_fruit": "'"${TOWN_FRUIT}"'",
      "mayor": "'"${MAYOR}"'"
    }
  }'

echo
