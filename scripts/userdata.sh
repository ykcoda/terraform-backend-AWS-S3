#! /bin/bash

sudo yum install update -y 
sudo yum install -y httpd.x86_64
sudo systemctl start httpd.service
sudo systemctl enable httpd.service 