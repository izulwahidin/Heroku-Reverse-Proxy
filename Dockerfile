FROM caddy:latest
COPY Caddyfile /etc/caddy/Caddyfile
CMD ["caddy","start"]
