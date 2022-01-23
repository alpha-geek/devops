FROM nginx

RUN apt-get -qq update --fix-missing && apt-get -qq --yes upgrade

RUN apt-get install -y libssl-dev openssl

RUN openssl req -x509 -newkey rsa:4096 -keyout /etc/ssl/private/nginx-selfsigned.key -out \
    /etc/ssl/certs/nginx-selfsigned.crt -days 3650 -nodes -sha256 -subj '/CN=djangoapp'