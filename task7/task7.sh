#!/bin/bash


groupadd demogrp

for i in  demousr1 demousr2 demousr3; 
do
useradd -G demogrp $i;
done


useradd testusr

echo "taskusr ALL=(ALL) ALL" >> /etc/sudoers

echo "%demogrp ALL=(ALL) ALL" >> /etc/sudoers



