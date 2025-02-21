#!/bin/bash

curl --request GET --verbose \
  --url "http://api.github.localhost/enterprises/github-inc/actions/hosted-runners/images/custom/1/versions/1.0.0" \
  --header 'Authorization: Bearer ghp_MonalisaTheOctoPatMonalisaTheOctoPat' \
  --header 'User-Agent: insomnia/9.2.0'  | jq

curl --request GET --url http://api.github.localhost/orgs/github/actions/hosted-runners/1 \
  --header 'Authorization: Bearer ghp_MonalisaTheOctoPatMonalisaTheOctoPat' \
  --header 'User-Agent: insomnia/9.2.0' | jq


curl --request POST \
  -H 'Authorization: Bearer ghp_MonalisaTheOctoPatMonalisaTheOctoPat' \
  -H 'User-Agent: insomnia/9.2.0' \
  --url http://api.github.localhost/orgs/github/actions/hosted-runners \
  -d '{"name":"hosted-runner-custom","image":{"id":"ubuntu-latest","source":"github","version":"latest"},"runner_group_id":1,"size":"4-core","maximum_runners":50,"enable_static_ip":false, "enable_image_gen":true}' | jq
