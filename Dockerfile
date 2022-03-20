FROM sujeetkumarsangerdocker/apachewebserver



WORKDIR /home/ubuntu
ENV NODE_ENV test

RUN apt-get update && apt-get clean

# Install node_modules
COPY  .  /var/www/html/


ENTRYPOINT apachectl -D FOREGROUND

