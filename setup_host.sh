#!/bin/bash


# Install up-to-date versions of crosstool and qemu
mkdir tools
cd tools/

wget http://crosstool-ng.org/download/crosstool-ng/crosstool-ng-1.22.0.tar.bz2
tar -xf crosstool-ng-1.22.0.tar.bz2
cd crosstool-ng/
./configure --prefix=/opt/crosstool-ng
make
make install
cd ..

wget http://wiki.qemu-project.org/download/qemu-2.8.0.tar.bz2
tar -xf qemu-2.8.0.tar.bz2
cd qemu-2.8.0
./configure --target-list=arm-linux-user --prefix=/opt/qemu --static
make
make install
# Create the symlink that ubuntu expects
cd /opt/qemu/bin
ln -s qemu-arm qemu-arm-static
cd ~

# Create gmake symlink to keep SDK happy
cd /usr/bin
ln -s make gmake

echo 'PATH=/opt/qemu/bin:/opt/crosstool-ng/bin:$PATH' >> ~/.profile

echo "Now install Vivado and SDK version 2016.1 and login again to ensure the enviroment is properly set up"
