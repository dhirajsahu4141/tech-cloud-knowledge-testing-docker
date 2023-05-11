FROM centos:latest
MAINTAINER prasad.dhiraj1994@gmail.com
RUN yum install httpd -y \
  ZIP \
 UNZIP
ADD  https://www.tooplate.com/zip-templates/2133_moso_interior.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip 2133_moso_interior.zip
RUN cp -rvf 2133_moso_interior/* .
RUN rm -rf 2133_moso_interior 2133_moso_interior.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
