#!/bin/bash

#gcloud compute instances list --filter="name~'^bdelic*'" --format="table(name, networkInterfaces[].accessConfigs[].natIP:label=PUBLIC_IP)" 

ips=$(gcloud compute instances list --filter="name ~ '^bdelic'" --format="value(networkInterfaces[].accessConfigs[].natIP)")

echo "[hosts]" > inventory.ini
for ip in $ips; do
    echo "${ip}" | sed -E "s/\[\'(.*)\'\]/\1/" >> inventory.ini
done