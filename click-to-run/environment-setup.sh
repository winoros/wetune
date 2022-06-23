#! /bin/bash

# installing Java 17
sudo add-apt-repository ppa:linuxuprising/java
sudo apt update
sudo apt-get install -y oracle-java17-installer oracle-java17-set-default

# installing Gradle 7.3.3
wget https://services.gradle.org/distributions/gradle-7.3.3-bin.zip -P /tmp
sudo unzip -d /opt/gradle /tmp/gradle-7.3.3-bin.zip
sudo touch /etc/profile.d/gradle.sh
sudo chmod a+wx /etc/profile.d/gradle.sh
sudo echo -e "export GRADLE_HOME=/opt/gradle/gradle-7.3.3 \nexport PATH=\${GRADLE_HOME}/bin:\${PATH}" >> /etc/profile.d/gradle.sh
source /etc/profile

# installing Sql Server 2019
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo add-apt-repository "$(wget -qO- https://packages.microsoft.com/config/ubuntu/20.04/mssql-server-2019.list)"
sudo apt-get update
sudo apt-get install -y mssql-server

# Sql Server setup
# Choose the 2nd edition of Sql Server
# Enter password: mssql2019Admin
sudo /opt/mssql/bin/mssql-conf setup

# firewall setup
sudo ufw enable
sudo ufw allow 1433

# installing Sql Server command-line tools
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
curl https://packages.microsoft.com/config/ubuntu/20.04/prod.list | sudo tee /etc/apt/sources.list.d/msprod.list
sudo apt-get update
sudo apt-get install -y mssql-tools unixodbc-dev

sudo touch /etc/profile.d/mssql.sh
sudo chmod a+wx /etc/profile.d/mssql.sh
sudo echo -e 'export PATH="$PATH:/opt/mssql-tools/bin"'>> /etc/profile.d/mssql.sh
source /etc/profile

gradle :stmt:downloadDb
gradle :superopt:downloadLib