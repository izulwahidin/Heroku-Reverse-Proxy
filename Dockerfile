FROM ubuntu

RUN apt install -y debian-keyring debian-archive-keyring apt-transport-https gpg tee
RUN curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' | gpg --dearmor -o /usr/share/keyrings/caddy-stable-archive-keyring.gpg
RUN curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' | tee /etc/apt/sources.list.d/caddy-stable.list
RUN apt update -y
RUN apt install caddy -y

COPY Caddyfile /etc/caddy/Caddyfile
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["bash","/entrypoint.sh"]
