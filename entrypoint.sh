echo "[WN] Wahidin"
envsubst < /etc/caddy/Caddyfile > /etc/caddy/Caddyfile
cat /etc/caddy/Caddyfile
caddy start
