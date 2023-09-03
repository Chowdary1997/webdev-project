FROM alpine:latest
MAINTAINER choudharysirvi1212@gmail.com
RUN apk update && apk add apache2
RUN apk add git
RUN git clone https://github.com/Chowdary1997/webdev-project.git /var/www/html
RUN mkdir -p /run/apache2
WORKDIR /var/www/html
CMD ["httpd","-D","FOREGROUND"]
EXPOSE 80
