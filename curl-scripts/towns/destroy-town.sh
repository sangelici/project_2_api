curl "http://localhost:4741/towns/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}" \

echo
