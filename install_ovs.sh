#!/bin/bash
#Install OVS

sudo apt-get update

wget http://openvswitch.org/releases/openvswitch-2.3.1.tar.gz
tar -zxf openvswitch-2.3.1.tar.gz
cd openvswitch-2.3.1
 
sudo apt-get install -y build-essential fakeroot

#Check dependencies:
dpkg-checkbuilddeps

#Install dependencies:
sudo apt-get install -y debhelper autoconf automake libssl-dev graphviz python-all python-qt4 python-twisted-conch libtool

#Build (parallelized and skips unit tests):
DEB_BUILD_OPTIONS='parallel=8 nocheck' fakeroot debian/rules binary

cd ..

#Install .deb packages
sudo dpkg -i ./openvswitch-datapath-dkms_2.3.1-1_all.deb ./openvswitch-common_2.3.1-1_amd64.deb ./openvswitch-switch_2.3.1-1_amd64.deb

sudo reboot

