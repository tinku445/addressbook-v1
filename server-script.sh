#! /bin/bash
# sudo yum install java-17-amazon-corretto-devel -y
sudo yum install git -y
# sudo yum install maven -y
sudo yum install docker -y
if [ -d "addressbook-v1" ]
then
  echo "repo is cloned and exists"
  cd /home/ec2-user/addressbook-v1
  git pull origin docker-1
else
  git clone https://github.com/preethid/addressbook-v1.git
fi
cd /home/ec2-user/addressbook-v1
git checkout docker-1
sudo docker build -t $1:$2 /home/ec2-user/addressbook-v1
