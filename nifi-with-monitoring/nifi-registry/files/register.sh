#!/usr/bin/env bash

if [[ ! -z "${NIFI_HOST}" ]]; then
    CLIENT_ID=$(cat /proc/sys/kernel/random/uuid)
    PAYLOAD=$(cat <<EOF
{"revision":{"clientId":"${CLIENT_ID}","version":0},
"component":{"name":"Local","uri":"http://$(hostname):18080","description":""}}
EOF
)
    while [[ "$(curl -sIf -o /dev/null -w "%{http_code}" http://${NIFI_HOST}:8080/nifi-api/system-diagnostics)" != "200" ]]; do
        printf '.'
        sleep 5
    done;

    curl -H 'Content-Type: application/json' -H 'Accept: application/json, text/javascript, */*; q=0.01' \
        "http://${NIFI_HOST}:8080/nifi-api/controller/registry-clients" --data-binary "${PAYLOAD}"
fi;
