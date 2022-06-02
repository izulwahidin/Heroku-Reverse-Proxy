FROM caddy

COPY Caddyfile /Caddyfile
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["sh","/entrypoint.sh"]
