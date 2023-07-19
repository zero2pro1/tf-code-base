#! /bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd
echo "Welcome to Zero2Pro, Fast Track your DevOps Career from Zero to Pro" > /var/www/html/index.html
