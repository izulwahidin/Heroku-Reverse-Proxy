envsubst < /etc/caddy/Caddyfile > /etc/caddy/Caddyfile
caddy start
cat /etc/caddy/Caddyfile
echo "[WN] Wahidin - Proxing from ${FROM} to port ${PORT} / ${DOMAIN}"
