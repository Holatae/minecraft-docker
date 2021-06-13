#!/bin/bash
cp paper.jar server
mkdir -p "server/plugins" && cp plugins/* "server/plugins"
mkdir -p "server/plugins/LuckPerms" && cp LuckPerms/* "server/plugins/LuckPerms"
mv server.properties server/
mv spigot.yml server/
cd server
echo eula=true > eula.txt
echo "server-port=${PORT}" >> server.properties
java -Xmx1024M -Xms1024M -jar paper.jar