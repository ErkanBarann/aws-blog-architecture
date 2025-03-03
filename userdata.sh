#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
git clone https://github.com/xxxxxxxxxxxxx/xxxxxxxxxxxxxxx.git
cd /home/ubuntu/xxxxxxxxxxxxxx/BlogDjango
apt install python3-pip -y
apt-get install python3.8-dev default-libmysqlclient-dev -y
apt-get install libjpeg-dev zlib1g-dev -y -qq
pip3 install -r requirements.txt
cd /home/ubuntu/xxxxxxxxxxxxxxxxx/BlogDjango/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80