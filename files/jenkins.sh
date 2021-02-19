#!/bin/bash
sudo yum install httpd -y
sudo systemctl start httpd 
sudo systemctl enable httpd 

sudo wget -O /etc/yum.repos.d/jenkins.repo \
https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install jenkins java-1.8.0-openjdk-devel -y
sudo systemctl start jenkins
sudo systemctl enable jenkins
