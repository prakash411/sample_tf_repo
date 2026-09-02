#!/bin/bash
sudo -i
yum update -y
yum install java-21-amazon-corretto-devel -y
wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum install jenkins -y
systemctl start jenkins.service
systemctl enable jenkins.service