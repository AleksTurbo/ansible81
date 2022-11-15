#!/usr/bin/env bash

set -x o errexit
echo "****STARTING***"
docker-compose up -d
echo "****DOCKER STARTING***"
ansible-playbook -i inventory/prod.yml site.yml --ask-vault-pass
echo "****ANSIBLE WORKING***"
docker-compose down -t 1
echo "****DOCKER STOPING***"
