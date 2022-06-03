envsubst < /etc/caddy/Caddyfile > /etc/caddy/Caddyfile
cat /etc/caddy/Caddyfile
caddy start
echo "[WN] Wahidin\n Proxing from ${host} to port ${PORT}"
