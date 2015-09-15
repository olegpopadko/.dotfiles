#!/usr/bin/env bash

sudo apt-get -y install zsh tmux libpq-dev libxml2-dev

cd ~
wget https://raw.githubusercontent.com/olegpopadko/.dotfiles/master/.tmux.conf
wget https://raw.githubusercontent.com/olegpopadko/.dotfiles/master/.vimrc

curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh

sudo pip install --upgrade pip setuptools
sudo pip install --upgrade httpie

curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

chsh -s `which zsh`

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable

~/.rvm/bin/rvm install ruby-2.2.0

source "$HOME/.rvm/scripts/rvm" && rvm --default use 2.2.0

source ~/.bashrc
cd /tmp
git clone https://github.com/rubygems/rubygems.git
cd rubygems
ruby setup.rb

gem install bundler

wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

curl -L -O https://github.com/phpbrew/phpbrew/raw/master/phpbrew
chmod +x phpbrew
sudo mv phpbrew /usr/bin/phpbrew

echo "source ~/.phpbrew/bashrc" >> ~/.zshrc
