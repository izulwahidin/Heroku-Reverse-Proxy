envsubst < /etc/caddy/Caddyfile > /etc/caddy/Caddyfile
caddy start debug
echo "[WN] Wahidin - Proxing from ${UPSTREAM} to port ${PORT} / ${DOMAIN}"
