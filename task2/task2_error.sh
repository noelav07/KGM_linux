#!/bin/bash

sp="echo -e \n"

{
mkdir -p india  && echo -e "TN\nKL\nAP\KA" > india/state && echo -e "KK\nCBE\nTVL\nCHE" > india/district
tree india
$sp
mkdir -p  colleges/{kgcas,kct,psg,sns,snr}/{bsc,bcom,bba,ba,msc}/{I,II,III}
touch colleges/kgcas/bsc/II/namelist ; printf "do1\ndo2\ndo3" > colleges/kgcas/bsc/II/friends 
$sp
cat colleges/kgcas/bsc/II/namelist
$sp
tree colleges
$sp
mkdir -pv  kgisl/kgcas/year
$sp
tree kgisl
$sp
printf "Autocad\nNebula\nAnsible\n" > software && cat software
$sp
printf "Processor\nRAM\nGPU\n" > hardware && cat hardware
$sp
cat software | tee cpu 
cat hardware | tee -a cpu
$sp
echo "a hidden file" > .disk 
$sp
cat .disk 
$sp
mv -v .disk .ram
$sp
mv -v india/state colleges/kgcas
$sp
touch sample && cp sample colleges/kct/bcom/II
$sp
tree colleges/kct/bcom/II
$sp
mv -vf colleges/sns/bsc  colleges/sns/msc/III
$sp
tree 
} && { 
$sp
echo "done" ; rm -rf c* in*  k* har* sof*  sample ; tree 
} || { 
$sp
echo failed 
}
