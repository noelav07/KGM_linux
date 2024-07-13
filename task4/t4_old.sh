#!/bin/bash

useradd task_user
echo -e "\n\n"
date 
date +%R
echo -e "\n\n"
mkdir -v demo && cp /etc/passwd demo/passwd
echo -e "\n\n"
tar -cvf demo.tar demo && gzip demo.tar && echo "File type: $(file demo.tar.gz)"
echo -e "\n\n"
gzf=$(zcat demo.tar.gz | wc -m)
echo "Size of the demo.tar.gz is: $gzf"
echo -e "\n\n"
echo "First 10 lines of the content":
echo -e "\n"
zcat demo.tar.gz | sed -n "2,11p" 
echo -e "\n\n"
echo "Last 10 lines of the content":
echo -e "\n"
zcat demo.tar.gz | tail -n 10
echo -e "\n\n"
if [ $? -eq 0 ]; then
    mkdir -v ~/Documents/project_plans && touch ~/Documents/project_plans/season{1,2}_project_plan.odf ; echo -e "\n" ; ls -l ~/Documents/project_plans/ 
else
    mkdir -vp ~/Documents/project_plans && touch ~/Documents/project_plans/season{1,2}_project_plan.odf ; echo -e "\n" ; ls -l ~/Documents/project_plans/
fi
echo -e "\n\n"
touch tv_season{1..2}_episode{1..6}.ogg
touch mystery_chapter{1..8}.odf
echo -e "files created \n $(ls -l tv* && echo -e "\n" && ls -l my* )"
echo -e "\n\n"

mkdir -pv ~/Videos/season{1,2} ; echo -e "\n" && mv -v tv_season1* ~/Videos/season1 ; echo -e "\n" && mv -v tv_season2* ~/Videos/season2
echo -e "\n\n"

mkdir -pv ~/Documents/my_bestseller/chapters && echo -e "\n\n" && mkdir -v  ~/Documents/my_bestseller/{editor,changes,vacation}
cd ~/Documents/my_bestseller/chapters && echo -e "\n\n" && mv ~/mystery_chapter* .
mv -v mystery_chapter{1,2}.odf ../editor/
echo -e "\n\n"
mv -v mystery_chapter{7,8}.odf ../vacation/
echo -e "\n\n"
cd ~/Videos/season2 ; ls && echo -e "\n\n" && cp -v tv_season2_episode1.ogg ~/Documents/my_bestseller/vacation/
cd ~/Documents/my_bestseller/vacation && ls . ; echo -e "\n\n" && ls -l ; echo -e "\n\n" && cd - && pwd
cp -v  tv_season2_episode2.ogg ~/Documents/my_bestseller/vacation/ ; echo -e "\n\n" && cd - && pwd
cp -rvf ~/Documents/my_bestseller/chapters/mystery_chapter[5-6].odf ~/Documents/my_bestseller/changes/
echo -e "\n\n"

cd ~/Documents/my_bestseller && pwd ; echo -e "\n\n"
cd ~/Documents/my_bestseller/changes && pwd ; echo -e "\n\n" && cp -v mystery_chapter5.odf mystery_chapter5_$(date +%F).odf
echo -e "\n\n"
cp -v mystery_chapter5.odf mystery_chapter5_$(date +%s).odf
echo -e "\n\n"

mkdir -pv ~/Documents/backups ; echo -e "\n\n" && ln ~/Documents/project_plans/season2_project_plan.odf ~/Documents/backups/season2_project_plan.odf.back

ls -il ~/Documents/backups/season2_project_plan.odf.back

echo -e "\n\n"

# rm -rf ~/demo* ~/Documents/project_plans ~/tv_season* ~/Videos/season{1,2} ~/Documents/my_bestseller ~/Documents/backups && userdel task_user
