#!/bin/bash

#update linux kernel to 3.13.0.45*

cd /tmp/

wget http://security.ubuntu.com/ubuntu/pool/main/l/linux/linux-headers-3.13.0-45-generic_3.13.0-45.74_amd64.deb
wget http://security.ubuntu.com/ubuntu/pool/main/l/linux/linux-headers-3.13.0-45_3.13.0-45.74_all.deb
wget http://security.ubuntu.com/ubuntu/pool/main/l/linux/linux-image-3.13.0-45-generic_3.13.0-45.74_amd64.deb

sudo dpkg -i linux-headers-3.13.0-*.deb 

sudo reboot
