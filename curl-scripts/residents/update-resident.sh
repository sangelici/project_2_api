curl "http://localhost:4741/residents/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "resident": {
      "name": "'"${NAME}"'",
      "animal_type": "'"${ANIMAL_TYPE}"'",
      "birthday": "'"${BIRTHDAY}"'",
      "hobby": "'"${HOBBY}"'"
    }
  }'

echo
