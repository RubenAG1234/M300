sudo ufw enable
sudo ufw allow 80/tcp
sudo ufw allow from [192.168.33.10] to any port 22

sudo a2enmod proxy
sudo a2enmod proxy_html
sudo a2enmod proxy_http

nano /etc/apache2/apache2.conf  --ServerName localhost