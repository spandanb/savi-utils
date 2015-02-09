#!/bin/bash

sudo apt-get update

sudo apt-get -y install python-eventlet python-routes python-webob python-paramiko

sudo apt-get -y install git

git clone git://github.com/osrg/ryu.git

cd ryu

sudo apt-get install -y python-setuptools python-pybabel python-dev build-essential

sudo easy_install pip 

sudo pip install --upgrade virtualenv 

sudo apt-get -y install libxml2-dev libxslt1-dev

sudo python ./setup.py install

// to run ryu using the simple_switch controller… 
PYTHONPATH=. ./bin/ryu-manager ryu/app/simple_switch.py

