FROM ubuntu

RUN apt update
RUN apt install -y debian-keyring debian-archive-keyring apt-transport-https
RUN wget 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' >> /usr/share/keyrings/caddy-stable-archive-keyring.gpg
RUN wget 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' >> sudo tee /etc/apt/sources.list.d/caddy-stable.list
RUN apt update
RUN apt install caddy

ADD Caddyfile /app/Caddyfile
ADD entrypoint.sh /app/entrypoint.sh

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT ["sh","/app/entrypoint.sh"]
