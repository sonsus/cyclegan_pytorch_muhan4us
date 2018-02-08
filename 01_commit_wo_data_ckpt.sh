#this script should be inside of the repo /my_pytorch_xxxxxx
##

DATE=$(date)


mv datasets/bolbbalgan4/train  ~/datatmp
mv checkpoints ~/datatmp

git add .
git status
git commit -m "$1"
git commit -m "$USER $DATE || auto commit excluding checkpoints and data"
git pull origin master
git push origin master

mv ~/datatmp/checkpoints .
mv ~/datatmp/train datasets/bolbbalgan4/

