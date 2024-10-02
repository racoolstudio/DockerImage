FROM ubuntu:22.04
LABEL "AUTHOR/MAINTAINER"="Ridwan Abdulwaheed"
LABEL "APP_NAME"="WEDDING WEBSITE"
ENV DEBIAN_FRONTEND="noninteractive"
RUN apt update && apt install apache2 wget zip unzip -y
WORKDIR /var/www/html
RUN wget "https://www.tooplate.com/zip-templates/2131_wedding_lite.zip" && unzip "2131_wedding_lite.zip"\
    && cp -r 2131_wedding_lite/* .
EXPOSE 80
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
