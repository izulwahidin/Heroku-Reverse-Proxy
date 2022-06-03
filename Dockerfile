FROM caddy

COPY Caddyfile /app/Caddyfile
COPY entrypoint.sh /app/entrypoint.sh

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT ["sh","/app/entrypoint.sh"]
