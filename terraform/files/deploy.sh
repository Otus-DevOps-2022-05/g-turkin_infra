#!/bin/bash
set -e
APP_DIR=${1:-$HOME}

#sudo apt-get update
#echo "update completed"
#sleep 10

#sudo apt-get install -y mongodb ruby-full ruby-bundler build-essential
#echo "apt-get install completed"
#sleep 10

#sudo systemctl start mongodb
#sudo systemctl enable mongodb
#sudo systemctl status mongodb
#echo "mangodb start"
#sleep 5

sudo apt-get install -y git
echo "git install"
sleep 10

git clone -b monolith https://github.com/express42/reddit.git $APP_DIR/reddit
cd $APP_DIR/reddit
bundle install
sudo mv /tmp/puma.service /etc/systemd/system/puma.service
sudo systemctl start puma
sudo systemctl enable puma
