FROM centos:latest
MAINTAINER rajendra.daggubati1997@gmail.com
RUN sudo apt install git -y
RUN git clone https://github.com/Chowdary1997/webdev-project /var/www/html
WORKDIR /var/www/html
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
