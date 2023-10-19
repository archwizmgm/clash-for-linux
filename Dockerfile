FROM debian:12
COPY ./ /usr/clash-for-linux
RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list.d/debian.sources && apt-get update && apt-get install -y openssl curl
CMD [ "bash","/usr/clash-for-linux/start.sh" ]