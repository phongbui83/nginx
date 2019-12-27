FROM ubuntu:18.04
RUN \
    apt update && \
    apt -y install software-properties-common curl gnupg2 ca-certificates lsb-release  && \
    echo "deb [arch=amd64] http://nginx.org/packages/mainline/ubuntu/ bionic nginx" > /etc/apt/sources.list.d/nginx.list && \
    curl -fsSL  http://nginx.org/keys/nginx_signing.key  | apt-key add - && \
    apt-key fingerprint ABF5BD827BD9BF62 && \
    apt update && apt -y install nginx
ADD entrypoint.sh /entrypoint.sh
EXPOSE 80 443
CMD ["bash","/entrypoint.sh"]
