#!/bin/bash 



cp -v /etc/passwd passwd ;cut -d ":" -f 1  passwd ; cut -d ":" -f 1,4,6 passwd ;grep "root" passwd > sample ; cat sample;\
tr a-z A-Z < passwd ;tr a-z A-Z < sample ; grep ^root passwd ; tail -n 3 passwd > doc1 ; cut -d ":" -f 1 | head -n 5 > doc2\ 
sed s.daemon.kgisl.g doc2 ; less passwd


