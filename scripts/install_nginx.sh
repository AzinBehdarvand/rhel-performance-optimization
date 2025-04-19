#!/bin/bash

echo "🔧 Updating packages..."
sudo yum update -y
sudo yum install -y epel-release

echo "🌐 Installing Nginx..."
sudo yum install -y nginx
sudo systemctl enable nginx
sudo systemctl start nginx
sudo systemctl status nginx

echo "✅ Nginx installation complete."
