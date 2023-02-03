#!/bin/bash

jdk17="/usr/lib/jvm/java-17-openjdk-amd64"

sudo update-alternatives --install "/usr/bin/java" "java" $jdk17"/bin/java" 2
sudo update-alternatives --install "/usr/bin/javac" "javac" $jdk17"/bin/javac" 2
sudo update-alternatives --install "/usr/bin/jar" "jar" $jdk17"/bin/jar" 2

sudo update-alternatives --set "java" $jdk17"/bin/java"
sudo update-alternatives --set "javac" $jdk17"/bin/javac"
sudo update-alternatives --set "jar" $jdk17"/bin/jar"

source /home/vk/.bashrc

sed -i '/export JAVA_HOME/c\export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64' /home/vk/.bashrc

echo "switched to java 17"

exec bash -i
