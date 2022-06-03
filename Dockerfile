FROM caddy

COPY Caddyfile /etc/caddy/Caddyfile

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["bash","/entrypoint.sh"]
