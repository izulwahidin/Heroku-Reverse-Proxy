FROM ubuntu

RUN apt update
RUN apt install wget curl -y
RUN apt install -y debian-keyring debian-archive-keyring apt-transport-https
RUN curl 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' -o /usr/share/keyrings/caddy-stable-archive-keyring.gpg
RUN curl 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' -o /etc/apt/sources.list.d/caddy-stable.list
RUN apt update -y
RUN apt install caddy -y

ADD Caddyfile /app/Caddyfile
ADD entrypoint.sh /app/entrypoint.sh

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT ["sh","/app/entrypoint.sh"]
