
#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/events/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
    --header "Authorization: Token token=$TOKEN" \
    --data '{
      "event": {
      "event_title": "'"${EVENT_TITLE}"'",
      "event_type": "'"${EVENT_TYPE}"'",
      "event_date": "'"${EVENT_DATE}"'",
      "todo1": "'"${TODO1}"'",
      "todo2": "'"${TODO2}"'",
      "todo3": "'"${TODO3}"'",
      "todo4": "'"${TODO4}"'",
      "todo5": "'"${TODO5}"'",
      "todo6": "'"${TODO6}"'",
      "todo7": "'"${TODO7}"'",
      "todo8": "'"${TODO8}"'",
      "todo9": "'"${TODO9}"'",
      "todo10": "'"${TODO10}"'",
      "todo11": "'"${TODO11}"'",
      "todo12": "'"${TODO12}"'",
      "todo13": "'"${TODO13}"'",
      "todo14": "'"${TODO14}"'",
      "todo15": "'"${TODO15}"'",
      "todo16": "'"${TODO16}"'",
      "todo17": "'"${TODO17}"'",
      "todo18": "'"${TODO18}"'",
      "todo19": "'"${TODO19}"'",
      "todo20": "'"${TODO20}"'"
    }
  }'


echo
