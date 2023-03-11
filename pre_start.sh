#!/bin/bash

ssh-keyscan -H ***.***.***.*** >> ~/.ssh/known_hosts
ssh-keyscan -H ***.***.***.*** >> ~/.ssh/known_hosts
sshpass -p "***" ssh-copy-id root@***.***.***.***
sshpass -p "***" ssh-copy-id root@***.***.***.***

ssh root@***.***.***.*** "apt update"
ssh root@***.***.***.*** "apt update"
ssh root@***.***.***.*** "apt install -y python3"
ssh root@***.***.***.*** "apt install -y python3"

mkdir -p ./roles/docker-compose/www_data/php
mkdir ./roles/docker-compose/www_data/database
