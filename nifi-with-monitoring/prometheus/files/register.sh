#!/bin/ash

if [[ ! -z "${GRAFANA_HOST}" ]]; then
    PAYLOAD=$(cat <<EOF
{"name":"Prometheus","isDefault":true,"type":"prometheus","url":"http://$(hostname):9090","access":"proxy"}
EOF
)
    while [[ "$(curl -sIf -o /dev/null -w "%{http_code}" http://${GRAFANA_HOST}:3000/api/health)" != "200" ]]; do
        printf '.'
        sleep 5
    done;

    curl -H 'Content-Type: application/json' \
        "http://admin:admin@${GRAFANA_HOST}:3000/api/datasources" --data-binary "${PAYLOAD}"
fi;
