FROM ubuntu:latest
MAINTAINER rajendra.daggubati1997@gmail.com
RUN apt install apache2 git -y
RUN git clone https://github.com/Chowdary1997/webdev-project /var/www/html
WORKDIR /var/www/html
CMD ["apache2ctl","-D","FOREGROUND"]
EXPOSE 80
