#!/bin/sh

echo "[INFO] Generating frpc.yaml..."

cat <<EOF > frpc.yaml
common:
  server_addr: ${SERVER_ADDR}
  server_port: ${SERVER_PORT}
  token: ${TOKEN}

proxies:
  - name: homeassistant_web
    type: tcp
    localIP: 127.0.0.1
    localPort: 8123
    remotePort: ${REMOTE_PORT}
EOF

echo "[INFO] Starting frpc with YAML config..."
./frpc -c frpc.yaml
