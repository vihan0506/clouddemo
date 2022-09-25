FROM ubuntu:14.04
MAINTAINER SACHINPATIL
LABEL NAME="SACHIN PATIL"
LABEL EMAILID="XYZ.COM"
ENV USERNAME="CLOUD"
ENV PASSWD="CLOUD@2022"
RUN apt-get update -y && apt-get install -y apache2 \
    zip \
    unzip
WORKDIR /var/www/html
ADD https://www.free-css.com/assets/files/free-css-templates/download/page280/solar.zip /var/www/html/
RUN unzip solar.zip
RUN service apache2 start
RUN cp -rvf  solar-energy-website-template/*  /var/www/html/
EXPOSE 80
CMD ["/bin/bash"]
