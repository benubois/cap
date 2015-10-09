#!/bin/bash

# Install dependencies
apt-get update
apt-get install git tree

# Create vhost
cat > /etc/apache2/sites-available/com.cap.staging.conf <<EOM
<VirtualHost *:80>
	ServerName staging.cap.com
	DocumentRoot /var/www/cap/current
</VirtualHost>
EOM

# Reconfigure apache
a2ensite com.cap.staging.conf
service apache2 reload