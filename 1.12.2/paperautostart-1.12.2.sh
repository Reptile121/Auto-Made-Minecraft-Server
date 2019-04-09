#!/bin/bash

wget https://papermc.io/api/v1/paper/1.12.2/1611/download

mv download paper-1611.jar

sudo java -jar paper-1611.jar

java -Xms1G -Xmx3G -XX:+UseConcMarkSweepGC -jar paper-1611.jar

mv eula.txt eulab.txt

mv eula1.txt eula.txt

rm eulab.txt

echo Run ./start.sh now

rm paperautostart-1.12.2.sh
