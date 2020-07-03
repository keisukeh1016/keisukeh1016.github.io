#!/bin/bash

#apt
sudo apt -y update
sudo apt -y upgrade
sudo apt -y autoremove

#snap
sudo snap refresh

#nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

#rbenv
cd ~/.rbenv && git pull
cd ~/.rbenv/plugins/ruby-build && git pull
