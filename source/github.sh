#!/bin/bash
sudo apt-get -y update

echo "Installing git"
sudo apt-get install -y git


mkdir -p ~/.ssh/
cd ~/.ssh/
echo "Generating SSH key"
read -p "Enter your email used for GitHub : " email
echo "
     Please press Enter key when prompted to enter a FILE NAME
     "
echo "
     Please don't skip password
     "
sleep 2
ssh-keygen -t rsa -b 4096 -C $email
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
echo "
https://github.com/settings/ssh/new 

Visit above link and copy and paste following ssh key
"
more ~/.ssh/id_rsa.pub
echo "\n\nYour device is configured to use git from terminal"



