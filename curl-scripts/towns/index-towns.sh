curl "http://localhost:4741/towns" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
