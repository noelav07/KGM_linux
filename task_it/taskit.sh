#!/bin/bash

groupadd rp29 

for u in  john praveen maris dinesh ram;
do 

        if [ $u = "ram" ]; then 

            useradd $u


        else

            useradd -G rp29 $u 
            echo $u:Rp29@123 | chpasswd 
             

        fi 
printf $u:Rp29@123 | chpasswd 
chage -M 45 -E $(date -d "+365 Days" +%F) $u 

done 

usermod -s /sbin/nologin ram 


for pro in john praveen; 
do 
    cat <<EOF >> /home/$pro/.bash_profile
echo "Welcome to lab1"
echo "================="
echo "*****************"
echo "================="
EOF

    cat <<EOF >> /home/$pro/.bash_logout
echo "BYE"
EOF

done


echo "umask 222" >> /home/praveen/.bashrc
mkdir /rp29 && chmod g=rwx,o=--- /rp29 
setfacl -m u:ram:rwx /rp29 
tar -zcvf /tmp/rp29.tar.gz /rp29/

echo -e "Cmnd_Alias    DENY = /usr/sbin/useradd, /usr/sbin/userdel, /usr/sbin/usermod\n%rp29  ALL=(ALL)   NOPASSWD:ALL\npraveen ALL=(ALL) ALL, !/usr/sbin/poweroff\njohn ALL=(ALL) ALL, !DENY\nmaris ALL=(ALL) ALL, !/usr/sbin" >> /etc/sudoers.d/rp29


