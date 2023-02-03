#!/bin/bash

jdk11="/usr/lib/jvm/java-11-openjdk-amd64"

sudo update-alternatives --install "/usr/bin/java" "java" $jdk11"/bin/java" 2
sudo update-alternatives --install "/usr/bin/javac" "javac" $jdk11"/bin/javac" 2
sudo update-alternatives --install "/usr/bin/jar" "jar" $jdk11"/bin/jar" 2

sudo update-alternatives --set "java" $jdk11"/bin/java"
sudo update-alternatives --set "javac" $jdk11"/bin/javac"
sudo update-alternatives --set "jar" $jdk11"/bin/jar"

source /home/vk/.bashrc

sed -i '/export JAVA_HOME/c\export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64' /home/vk/.bashrc

echo "switched to java 11"

exec bash -i
