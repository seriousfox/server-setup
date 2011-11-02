#! /bin/bash

function info {
	echo -e "---------------------------------------------------------"
	echo -e $1
	echo -e "---------------------------------------------------------"
}

info "Install rbenv"
cd 
git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
source .bash_profile


info "Install Ruby-Build"

git clone https://github.com/sstephenson/ruby-build.git
cd ruby-build
sudo ./install.sh

info "Install Ruby 1.9.2 - This may take a while"
rbenv install 1.9.2-p290
rbenv rehash


info "Set 1.9.2 as global"
rbenv global 1.9.2-p290

info "Install Bunlder"
gem install bundler

info "All done"
echo "Run - source .bash_profile"