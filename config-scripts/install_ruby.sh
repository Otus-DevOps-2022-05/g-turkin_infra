#!/bin/bash

sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates
sudo apt-get install -y ruby-full ruby-bundler build-essential git
ruby -v
bundler -v
