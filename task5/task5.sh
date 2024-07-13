#!/bin/bash

groupadd linux
getent group linux
useradd gold
useradd ben
useradd -G linux -p redhat 
useradd -G linux centos
useradd -s /sbin/nologin ubuntu 
pd=kgM@123
for names in redhat centos ubuntu;
do
    echo "$names:$pd"| chpasswd
    echo "created $(names)" 
done;
useradd -u 6000 sam
id -u centos && sudo usermod -u 10001 centos ; echo "centos:$($(id -u centos))"
dnf install fish > /dev/null
su - ubuntu -c 'echo $0' && usermod -s /bin/fish
usermod -l redhat 
su - redhat 
groupadd ims_rp29

for i in noel{1..5};
do 
    gpasswd $(i) ims_rp29
done;