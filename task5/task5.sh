#!/bin/bash
groupdel ims_rp29 && groupdel linux
groupadd linux
getent group linux
useradd gold && echo "created user:gold"
useradd ben && echo "created user:ben"
useradd -G linux redhat && echo "created user:redhat"
useradd -G linux centos && echo "created user:centos"
useradd -s /sbin/nologin ubuntu && echo "created user:ubuntu"
pd=kgM@123
for names in redhat centos ubuntu; do echo "$names:$pd"| chpasswd; echo "created $names"; done;
useradd -u 6000 sam
id -u centos && sudo usermod -u 10001 centos ; echo "centos:$(id -u centos)"
dnf install fish -y > /dev/null
chsh -s /bin/fish ubuntu
usermod -L redhat 
groupadd ims_rp29 
for i in noel{1..5};do 
useradd $i;
gpasswd -a $i ims_rp29 
done;
echo -e "details of the added users: \n\n"
tail /etc/passwd | cat -n 

# for users in ubuntu redhat gold ben centos sam ; do userdel -r $users ; done
# for noels in noel{1..5}; do userdel -r $noels; done