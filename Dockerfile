FROM ubuntu
RUN apt update -y && apt install apache2  -y
ENTRYPOINT apache2ctl -DFOREGROUND
EXPOSE 80
