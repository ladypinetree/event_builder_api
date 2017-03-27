#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/events"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "event": {
      "event_title": "'"${EVENT_TITLE}"'",
      "event_type": "'"${EVENT_TYPE}"'",
      "event_date": "'"${EVENT_DATE}"'"
    }
  }'

echo
