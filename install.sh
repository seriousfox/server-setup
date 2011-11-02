#! /bin/bash

function info {
	echo -e "---------------------------------------------------------"
	echo -e $1
	echo -e "---------------------------------------------------------"
}

info "Create User"

if [ $(id -u) -eq 0 ]; then
	username="deployer"
	read -s -p "Enter password : " password
	egrep "^$username" /etc/passwd >/dev/null
	if [ $? -eq 0 ]; then
		echo "$username exists!"
		# exit 1
	else
		pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
		useradd -m -p $pass -G sudo $username
		[ $? -eq 0 ] && echo "User has been added to system!" || echo "Failed to add a user!"
	fi
else
	echo "Only root may add a user to the system"
	exit 2
fi

info "Add user to group"
usermod -a -G sudo deployer
echo "Added deployer to group sudo"

info "SSH Permissions"

mkdir /home/deployer/.ssh
touch /home/deployer/.ssh/authorized_keys
chown -R deployer:sudo /home/deployer/.ssh
chmod 700 /home/deployer/.ssh
chmod 600 /home/deployer/.ssh/authorized_keys

echo "Made directory .ssh"
echo "Touched authorized_keys"
echo "Changed Ownership .ssh"
echo "chmod 700 .ssh"
echo "chmod 600 .ssh/authorized_keys"

info "Update System"
apt-get update

info "Build Essentials"
yes | apt-get install build-essential zlib1g-dev git-core sqlite3 libsqlite3-dev

info "Completed"
echo "All done, login to deployer and run ruby-install.sh"