# Base image - ubuntu:vivid
FROM armbuild/scw-distrib-ubuntu:vivid

RUN apt-get install -y php5 php5-sqlite unzip

# To make sure the php modules are reloaded
RUN service apache2 restart

ADD ./patches/etc /etc

# Install Kanboard
RUN cd /tmp \
 && wget --quiet http://kanboard.net/kanboard-latest.zip \
 && unzip -qq kanboard-latest.zip \
 && cp -r kanboard/. /var/www/html \
 && chown -R www-data:www-data /var/www/html/data \
 && rm /var/www/html/index.html
