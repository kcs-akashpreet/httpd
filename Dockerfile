FROM centos:latest
MAINTAINER Akash

RUN yum install -y httpd
COPY index.html /var/www/html/

EXPOSE 80

ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
