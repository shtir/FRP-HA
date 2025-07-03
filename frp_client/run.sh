#!/bin/sh

echo "[INFO] Generating frpc.yaml..."

cat <<EOF > frpc.yaml
common:
  server_addr: ${SERVER_ADDR}
  server_port: ${SERVER_PORT}
  token: ${TOKEN}

proxies:
  homeassistant_web:
    type: tcp
    local_ip: 127.0.0.1
    local_port: 8123
    remote_port: ${REMOTE_PORT}
EOF

echo "[INFO] Starting frpc with YAML config..."
./frpc -c frpc.yaml
