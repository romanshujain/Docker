FROM ubuntu:18.04
MAINTAINER "Romanshu"
RUN apt-get update -y
RUN apt-get install -y nginx
ADD index.html /var/www/html/
RUN sed -i 's/listen 80 default_server/listen 8000 default_server/g' /etc/nginx/sites-enabled/default
EXPOSE 8000
ENTRYPOINT ["nginx", "-g", "daemon off;"]




















#FROM ubuntu:18.04
#RUN apt-get install apache -y
#ADD index.html /var/www/html/
#ENTRYPOINT [“/usr/sbin/httpd”,” -D”,” FOREGROUND”]
#EXPOSE 80
#/usr/share/nginx/html
#ADD index.html /usr/share/nginx/html/index.html
#ENTRYPOINT ["/usr/local/nginx/sbin", "-g" "daemon off;"]


