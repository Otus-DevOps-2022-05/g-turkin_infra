#!/bin/sh
apt-get update
sleep 10
apt-get install -y mongodb
systemctl start mongodb
systemctl enable mongodb
systemctl status mongodb
