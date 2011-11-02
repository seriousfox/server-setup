#! /bin/bash

function info {
	echo -e "---------------------------------------------------------"
	echo -e $1
	echo -e "---------------------------------------------------------"
}

info "Install nginx"

nginx=stable # use nginx=development for latest development version
add-apt-repository ppa:nginx/$nginx
apt-get update 
apt-get install nginx

