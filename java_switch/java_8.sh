#!/bin/bash

jdk8="/usr/lib/jvm/java-8-openjdk-amd64"

sudo update-alternatives --install "/usr/bin/java" "java" $jdk8"/bin/java" 2
sudo update-alternatives --install "/usr/bin/javac" "javac" $jdk8"/bin/javac" 2
sudo update-alternatives --install "/usr/bin/jar" "jar" $jdk8"/bin/jar" 2

sudo update-alternatives --set "java" $jdk8"/bin/java"
sudo update-alternatives --set "javac" $jdk8"/bin/javac"
sudo update-alternatives --set "jar" $jdk8"/bin/jar"

source /home/vk/.bashrc

sed -i '/export JAVA_HOME/c\export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64' /home/vk/.bashrc

echo "switched to java 8"

exec bash -i
