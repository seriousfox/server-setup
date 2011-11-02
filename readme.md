## Needs

*Security*

IP Tables

Lockdown Services

Users - deployer

*Databases*

MySQL - Should upgrade to postgres... 

SQLite - Testing

*Web Server*

Nginx

Unicorn


# Getting Started

## As Root
	wget https://github.com/seriousfox/server-setup/raw/master/install.sh
	chmod +x install.sh
	./install.sh

*On YOUR MACHINE*

	scp ~/.ssh/id_rsa.pub deploy@server.com:

	ssh deploy@server.com

	cat id_rsa.pub >> .ssh/authorized_keys

## Login as deployer
	wget https://raw.github.com/seriousfox/server-setup/master/deployer/ruby-setup.sh
	
	wget https://raw.github.com/seriousfox/server-setup/master/deployer/nginx.sh
	
	chmod +x ruby-setup.sh
	
	chmod +x nginx.sh
	
	./ruby-setup.sh
	  
	./nginx.sh