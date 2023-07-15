FROM centos:latest
MAINTAINER shubham.oist@gmail.com   
RUN yum install -y httpd \
     zip \
     unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page293/hostit.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip hostit.zip
RUN -rvf _markups-hostit/* .
RUN rm -rf_MACOSX markups-hostit hostit.zip 
CMD ["/usr/sbin/httpd", "-D", "FORGROUND"]
EXPOSE 80
