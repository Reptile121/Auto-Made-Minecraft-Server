#!/bin/bash

sudo wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar

sudo apt install openjdk-8-jdk openjdk-8-jre git -y

sudo java -Xmx1800M -jar BuildTools.jar --rev 1.13.2

sudo java -Xmx1800M -Xmx1800M -jar spigot-1.13.2.jar

mv eula.txt eulab.txt

rm eulab.txt

mv eula1.txt eula.txt

mv server.properties serverb.properties

mv server1.properties server.properties

rm serverb.properties

echo Run ./start.sh now "(if you want to you can edit it to fit your server needs/wants :])"

rm spigotautostart-1.13.2.sh
