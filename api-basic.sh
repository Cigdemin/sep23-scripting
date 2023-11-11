#!/bin/bash

# JSON -- Javascript Object Notation

# info="$(curl https://f4idu2pd8h.execute-api.us-east-1.amazonaws.com/v1/info | jq -r .body)"
# echo $info
DROPLET_ID="384481288"

curl -X GET \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $DO_TOKEN" \
   "https://api.digitalocean.com/v2/droplets/$DROPLET_ID" | jq .droplet.networks.v4[0].ip_address