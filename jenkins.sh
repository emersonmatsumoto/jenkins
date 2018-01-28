#!/bin/bash
clear

echo "Instalando openjdk 8"
yum install java-1.8.0-openjdk-devel -y

echo "Instalando maven 3"
wget http://mirror.nbtelecom.com.br/apache/maven/maven-3/3.5.2/binaries/apache-maven-3.5.2-bin.tar.gz
tar xvf apache-maven-3.5.2-bin.tar.gz
mv apache-maven-3.5.2 /usr/local/apache-maven
cat >/etc/profile.d/maven.sh <<EOL
export M2_HOME=/usr/local/apache-maven
export M2=\$M2_HOME/bin
export PATH=\$M2:$PATH
EOL
source /etc/profile.d/maven.sh

echo "Instalando jenkins"
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum install jenkins -y
service jenkins start

echo "Senha admin execute o comando abaixo"
echo "cat /var/lib/jenkins/secrets/initialAdminPassword"