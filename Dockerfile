FROM ubuntu:18.04
MAINTAINER "Romanshu"
RUN apt-get update -y
RUN apt-get install -y nginx
ADD index.html /var/www/html/
RUN sed -i 's/listen 80 default_server/listen 8000 default_server/g' /etc/nginx/sites-enabled/default
EXPOSE 8000
ENTRYPOINT ["nginx", "-g", "daemon off;"]




















