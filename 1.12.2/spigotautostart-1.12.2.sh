#!/bin/bash

wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar

sudo java -jar BuildTools.jar --rev 1.12.2

java -Xms1G -Xmx3G -XX:+UseConcMarkSweepGC -jar spigot-1.12.2.jar

mv eula.txt eulab.txt

rm eulab.txt

mv eula1.txt eula.txt

echo Run ./start.sh now

rm spigotautostart-1.12.2.sh
