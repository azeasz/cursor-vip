#!/bin/bash

TOKEN="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"
OWNER="azeasz"
REPO="repository"

# Star
curl -X PUT -H "Authorization: token $TOKEN" https://api.github.com/user/star/$OWNER/$REPO

# Watch
curl -X PUT -H "Authorization: token $TOKEN" -H "Content-Type: application/json" -d '{"subscribed": true, "ignored": false}' https://api.github.com/repos/$OWNER/$REPO/subscription

# Fork
curl -X POST -H "Authorization: token $TOKEN" https://api.github.com/repos/$OWNER/$REPO/forks

echo "Tindakan selesai: Star, Watch, dan Fork telah dilakukan."
