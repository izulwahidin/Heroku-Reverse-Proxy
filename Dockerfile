FROM caddy

COPY ./Caddyfile /main/Caddyfile
COPY ./entrypoint.sh /main/entrypoint.sh

RUN chmod +x /main/entrypoint.sh

ENTRYPOINT ["sh","/main/entrypoint.sh"]
