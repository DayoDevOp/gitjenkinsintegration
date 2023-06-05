#! /bin/bash

yum install httpd -y
systemctl start httpd
systemctl enable httpd
echo "Welcome Home" > /var/www/html/index.html
firewall-cmd --permanent --add-service={http,https}
firewall-cmd --reload
systemctl enable --now httpd
