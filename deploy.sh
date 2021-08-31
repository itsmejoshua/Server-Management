#!/bin/bash

dnf update -y
dnf install httpd httpd-tools -y
systemctl start httpd
systemctl enable httpd

if [ $(systemctl status httpd | grep -v grep | grep 'active (running)' | wc -l) > 0 ]
then
 echo "Process is running."
else
  echo "Process is not running."
fi
