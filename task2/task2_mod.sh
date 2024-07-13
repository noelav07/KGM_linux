#!/bin/bash

mkdir -p india  && echo -e "TN\nKL\nAP\KA\n" > india/state && echo -e "KK\nCBE\nTVL\nCHE\n" > india/district 
mkdir -p  colleges/{kgcas,kct,psg,sns,snr}/{bsc,bcom,bba,ba,msc}/{I,II,III}
touch colleges/kgcas/bsc/II/namelist ; printf "do1\ndo2\ndo3" > colleges/kgcas/bsc/II/friends 
cat colleges/kgcas/bsc/II/namelist
tree colleges
mkdir -pv  kgisl/kgcas/year
tree kgisl
printf "Autocad\nNebula\nAnsible\n" > software && cat software
printf "Processor\nRAM\nGPU\n" > hardware && cat hardware
cat software | tee cpu 
cat hardware | tee -a cpu
echo "a hidden file" > .disk 
cat .disk 
mv -v .disk .ram
mv -v india/state colleges/kgcas
touch sample && cp sample colleges/kct/bcom/II
tree colleges/kct/bcom/II
mv -vf colleges/sns/bsc  colleges/sns/msc/III
tree
rm -rf colleges
tree
