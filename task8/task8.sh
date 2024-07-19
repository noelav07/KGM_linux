#!/bin/bash
sp="echo -e '\n'"

sed -i 's.PASS_MAX_DAYS\s\+99999.PASS_MAX_DAYS   30.' /etc/login.defs
sed -n '130, 131p' /etc/login.defs 
$sp
groupadd -g 35000 consultants
getent group consultants 
$sp
pd=redhat

for u in consultant1 consultant2 consultant3; 
do 
useradd -G consultants $u  
tail -1 /etc/passwd && $sp
echo $u:$pd | chpasswd; 
chage -E $(date -d "+90 days" +%F) $u && chage -l $u;
done


chage -M 15 consultant2 && echo -e "consultant2:\n"&& chage -l consultant2; 
$sp
mkdir -vp /home/consultants 
$sp
chgrp -v consultants /home/consultants
$sp
ls -ld /home/consultants 
##default is 755 thus only read and exectute bit for group.
$sp
chmod -v 2770 /home/consultants 
$sp
ls -ld /home/consultants
$sp 

useradd -G consultants tech1 && tail -1 /etc/passwd && $sp
useradd -G consultants tech2 && tail -1 /etc/passwd && $sp
useradd database1  && tail -1 /etc/passwd && $sp

su tech1 -c 'echo "A member of the consultants group" > /home/consultants/tech1user.txt'  && ls /home/consultants/tech1user.txt && $sp

su database1 -c 'echo "haha to the consultants group" > /home/consultants/database1user.txt' 
$sp


