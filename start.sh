#!/bin/bash

terraform apply --auto-approve
sleep 30
./get_ips.sh
ansible-playbook playbook.yml