#!/bin/bash
sudo apt update -y &&
sudo apt install -y nginx
echo "<h1>Welcome to Terraform Nginx demo by RJ</h1>" > /var/www/html/index.html