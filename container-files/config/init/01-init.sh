#!/bin/bash

set -e

if [ ! -f "/etc/apache2/sites-enabled/default-ssl.conf" ]; then
ln -s /etc/apache2/sites-available/default-ssl.conf /etc/apache2/sites-enabled/default-ssl.conf
fi

chown www-data:nogroup /var/www/html/config/config.php
cat /collpem/ca-chain.cert.pem >> /var/www/html/resources/config/ca-bundle.crt
