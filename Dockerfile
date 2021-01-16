
FROM centos:latest
MAINTAINER cpbarik.mca@gmail.com
ADD https://www.free-css.com/assets/files/free-css-templates/download/page261/niture.zip /var/www/html
WORKDIR /var/www/html
RUN unzip niture.zip
RUN cp -rvf niture/*
RUN rm -rf niture niture.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
