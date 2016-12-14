#!/bin/bash
echo  'KERNEL=="ttyACM*", ATTRS{idVendor}=="2341", ATTRS{idProduct}=="0042", MODE:="0666", GROUP:="dialout",  SYMLINK+="dashgo"' >/etc/udev/rules.d/dashgo.rules

echo  'KERNEL=="ttyUSB*", ATTRS{idVendor}=="1a86", ATTRS{idProduct}=="7523", MODE:="0666", GROUP:="dialout",  SYMLINK+="dashgo"' >/etc/udev/rules.d/ch34x.rules

echo  'KERNEL=="ttyUSB*", ATTRS{idVendor}=="10c4", ATTRS{idProduct}=="ea60", MODE:="0666", GROUP:="dialout",  SYMLINK+="flashlidar"' >/etc/udev/rules.d/flashlidar.rules

service udev reload
sleep 2
service udev restart


chmod +x  /home/eaibot/dashgo_ws/src/dashgo/dashgo_tools/startup/*sh
