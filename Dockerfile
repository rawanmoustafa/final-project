FROM ubuntu:latest

WORKDIR /app

RUN apt-get update -y &&\
    apt-get install apache2 -y
    
COPY /new/index.html /var/www/html/

EXPOSE 8000

CMD ["apachectl", "-D", "FOREGROUND"]



