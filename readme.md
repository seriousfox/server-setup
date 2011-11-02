# Serious Fox Servers
ssh root@50.57.172.73
server-test343bdFXOq

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
1. Login to the server as root and clone the install.sh
2. chmod +x install.sh
3. ./install.sh
4. Logout and login as deployer
5. Clone ruby-setup.sh nginx.sh
6. chmod +x ruby-setup.sh nginx.sh
7. sudo ./ruby-setup.sh
8. source .bash_profile
9. sudo ./nginx.sh


**On YOUR MACHINE**
scp ~/.ssh/id_rsa.pub deploy@server.com:
ssh server.com -l deploy