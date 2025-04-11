#!/bin/bash

rm -rf "/tmp/GitHub/unassigned.devices/source/unassigned.devices/usr/local/emhttp/plugins/unassigned.devices/"
mkdir -p "/tmp/GitHub/unassigned.devices/source/unassigned.devices/usr/local/emhttp/plugins/unassigned.devices/"

cp /usr/local/emhttp/plugins/unassigned.devices/* /tmp/GitHub/unassigned.devices/source/unassigned.devices/usr/local/emhttp/plugins/unassigned.devices -R -v -p
cp /etc/udev/rules.d/99_persistent_unassigned.rules /tmp/GitHub/unassigned.devices/source/unassigned.devices/usr/local/emhttp/plugins/unassigned.devices/
cp /tmp/GitHub/unassigned.devices/source/update.php /tmp/GitHub/unassigned.devices/source/unassigned.devices/usr/local/emhttp/plugins/unassigned.devices/include/

cd /tmp/GitHub/unassigned.devices/source/unassigned.devices/usr/local/emhttp/plugins/unassigned.devices
# Delete Apple Metadata files
find . -maxdepth 9999 -noleaf -type f -name "._*" -exec rm -v "{}" \;
rm -f  ca.md5
find . -type f -exec md5sum {} + > /tmp/ca.md5
mv /tmp/ca.md5 ca.md5


