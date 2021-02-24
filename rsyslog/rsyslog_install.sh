#!/bin/bash

#Install rsyslog
yum update -y
yum install rsyslog -y

#Configure ryslog.conf
curl -LO https://raw.githubusercontent.com/sisondarrenl/Automation/main/rsyslog/rsyslog.conf
mv rsyslog.conf /etc/rsyslog.conf
chmod 600 /etc/rsyslog.conf
                
#initialize rsyslog
service rsyslog enable
service rsyslog restart
