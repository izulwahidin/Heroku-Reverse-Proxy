envsubst < /etc/caddy/Caddyfile > /etc/caddy/Caddyfile
caddy start
cat /etc/caddy/Caddyfile
echo "[WN] Wahidin\n Proxing from ${host} to port ${PORT}"
