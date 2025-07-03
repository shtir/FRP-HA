# Home Assistant Add-on: FRPC Client

This is a custom Home Assistant add-on that runs the **FRP (Fast Reverse Proxy) client** using **YAML configuration** to securely expose your local Home Assistant instance through TCP tunneling.

## 📦 Features

- Uses [fatedier/frp](https://github.com/fatedier/frp) client (`frpc`)
- TCP tunneling support (exposes Home Assistant port `8123`)
- Configuration via Home Assistant UI
- Clean YAML-based `frpc.yaml` auto-generated on start
- Works locally, no external Docker registry needed
- Only for `amd64` (for now)

---

## ⚙️ Configuration

Edit the add-on options from the Home Assistant UI like this:

```yaml
server_addr: "your-frp-server.com"
server_port: 7000
token: "your-secret-token"
remote_port: 8123
