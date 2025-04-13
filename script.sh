#!/bin/bash

!/bin/bash

cd /home/ec2-user

sudo yum -y upgrade
sudo yum install -y git
#git clone https://github.com/ysennoun/the-green-earth-post.git
sudo yum install pip -y
pip3 install -r aws-test/back_end/requirements.txt
export AWS_DEFAULT_REGION="eu-west-1"
export MYSQL_DB_INSTANCE="thegreenearthpost"
export MYSQL_DATABASE="thegreenearthpost"
export MYSQL_USER="admin"
export MYSQL_PASSWORD="password"
gunicorn --bind 0.0.0.0:5000 --chdir aws-test/back_end handler:app


