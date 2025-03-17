#!/bin/bash

ips=$(gcloud compute instances list --filter="name ~ '^bdelic'" --format="value(networkInterfaces[].accessConfigs[].natIP)")
# converts string ips to a list
ips=($ips)
n=${#ips[@]}
mid=$((n / 2))

echo "[java]" > inventory.ini
for ((i=0; i<mid; i++)); do
    echo "${ips[$i]}" | sed -E "s/\[\'(.*)\'\]/\1/" >> inventory.ini
done

echo "[docker]" >> inventory.ini
for ((i=mid; i<n; i++)); do
    echo "${ips[$i]}" | sed -E "s/\[\'(.*)\'\]/\1/" >> inventory.ini
done