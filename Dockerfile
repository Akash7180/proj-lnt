FROM ubuntu:22.10

WORKDIR /root

RUN git clone https://github.com/Akash7180/Food-recipe-website-with-api-call

WORKDIR /root/Food-recipe-website-with-api-calls

RUN apt update && apt install systemctl nginx -y

RUN rm /var/www/html/index.nginx-debian.html
COPY * /var/www/html/

RUN systemctl enable nginx

CMD ['nginx','-g','daemon off;']
