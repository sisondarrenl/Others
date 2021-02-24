#!/bin/bash

#Install rsyslog
yum update -y
yum install squid -y

#Configure ryslog.conf
curl -LO https://raw.githubusercontent.com/sisondarrenl/Automation/main/squid/squid.conf
mv squid.conf /etc/squid/squid.conf
chmod 600 /etc/squid/squid.conf
                
#initialize rsyslog
systemctl restart squid
systemctl enable squid
