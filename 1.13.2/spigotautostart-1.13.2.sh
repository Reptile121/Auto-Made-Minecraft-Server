#!/bin/bash

sudo wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar

sudo java -jar BuildTools.jar --rev 1.13.2

java -Xms1G -Xmx3G -XX:+UseConcMarkSweepGC -jar spigot-1.13.2.jar

mv eula.txt eulab.txt

rm eulab.txt

mv eula1.txt eula.txt

echo Run ./start.sh now "(if you want to you can edit it to fit your server needs/wants :])"

rm spigotautostart-1.13.2.sh
