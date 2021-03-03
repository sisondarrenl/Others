#!/bin/bash

#Install squid
yum update -y
yum install squid -y

#Configure squid.conf
curl -LO https://raw.githubusercontent.com/sisondarrenl/Automation/main/squid/squid.conf
mv squid.conf /etc/squid/squid.conf
chmod 600 /etc/squid/squid.conf
                
#initialize squid
systemctl restart squid
systemctl enable squid
