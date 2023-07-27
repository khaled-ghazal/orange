FROM ubuntu:latest

RUN apt update -y 
RUN apt install apache2 -y 

COPY index.html /var/html/www

CMD ["apache2ctl", "-D", "FOREGROUND"]


