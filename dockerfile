FROM centos:latest
MAINTAINER shubham.oist@gmail.com
RUN yum install -y httpd   
RUN echo "Welcome to india"  /var/www/html/
WORKDIR /var/www/html
CMD ["/usr/sbin/httpd","-D","FORGROUND"]
EXPOSE 80
