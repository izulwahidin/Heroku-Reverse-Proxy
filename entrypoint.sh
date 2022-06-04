#envsubst < /etc/caddy/Caddyfile > /etc/caddy/Caddyfile
caddy start
echo "[WN] Wahidin - Proxing from ${UPSTREAM} to port ${PORT} / ${DOMAIN}"
