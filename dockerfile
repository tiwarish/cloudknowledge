FROM centos:latest
MAINTAINER shubham.oist@gmail.com   
RUN yum install -y httpd \
     zip \
     unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page293/vertex.zip /var/www/html/
WORKDIR /var/www/html
UN unzip vertex.zip
RUN -rvf markups-vertex/* .
RUN rm -rf_MACOSX markups-vertex vertex.zip /var/www/html/
CMD ["/usr/sbin/httpd","-D","FORGROUND"]
EXPOSE 80
