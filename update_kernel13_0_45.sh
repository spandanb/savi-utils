#!/bin/bash

#update linux kernel to 3.13.0.45*

cd /tmp/

wget http://launchpadlibrarian.net/194803620/linux-headers-3.13.0-45_3.13.0-45.74_all.deb

sudo dpkg -i linux-headers-3.13.0-*.deb 

sudo reboot
