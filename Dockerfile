FROM ubuntu:latest
MAINTAINER rajendra.daggubati1997@gmail.com
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y install apache2 git
RUN git clone https://github.com/Chowdary1997/webdev-project.git /var/www/html
WORKDIR /var/www/html
CMD ["apache2ctl","-D","FOREGROUND"]
EXPOSE 80
