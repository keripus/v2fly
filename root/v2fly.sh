#!/bin/sh

if [ -z "$UUID" ]
then
    UUID=$(cat /proc/sys/kernel/random/uuid)
    echo "your uuid is $UUID"
fi
sed -i "s/00000000-0000-0000-0000-000000000000/$UUID/" /etc/v2ray/config.json

/usr/bin/v2ray -config /etc/v2ray/config.json