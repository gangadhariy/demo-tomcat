FROM ubuntu
RUN apt update -y && apt install apache2 git -y
RUN cd /var/www/html && git clone https://github.com/devopstraining99/demo-app
ENTRYPOINT apache2ctl -DFOREGROUND
EXPOSE 80
