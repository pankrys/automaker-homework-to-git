
#init
git init
touch .gitignore
echo "git.sh">.gitignore

#---------master---------------
date>file1.txt
git add .
git commit -m "master commit #1"

#-----
date>file0.txt
git add .
git commit -m "master commit #2"
#------------------------------

#------------dev---------------
git checkout -b dev
#------
echo 'dev'>>file0.txt
git add .
git commit -m "dev commit #1"
#------
echo 'dev'>>file1.txt
git add .
git commit -m "dev commit #2"
#------------------------------

#------hotfix------------------
git checkout master
git checkout -b hotfix
echo 'hotfix'>>file0.txt
git add .
git commit -m "hotfix"

#----------features------------
git checkout dev
git checkout -b features
#------
date>file2.txt
echo 'features'>>file0.txt
echo 'features'>>file1.txt
echo 'features'>>file2.txt
git add .
git commit -m "features commit #1"
#------------------------------

