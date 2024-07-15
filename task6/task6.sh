#!/bin/bash

#/etc/login.defs ----> PASS_MAX_DAYS  30 

groupadd -g 35000 consultants

pasd=redhat 

for i in consultant1 consultant2 consultant3; 

do 
    useradd -G consultants $i ; echo -e "\n"
    echo $i:$pasd | chpasswd
    chage -E $(date -d "+90 days" +%F) $i && chage -l $i ;
    chage -d 0 $i
done

chage -M 15  consultant2 
