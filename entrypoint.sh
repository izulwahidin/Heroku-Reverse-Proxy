envsubst < /etc/caddy/Caddyfile > /etc/caddy/Caddyfile
caddy run
echo "[WN] Wahidin - Proxing from ${UPSTREAM} to port ${PORT} / ${DOMAIN}"
