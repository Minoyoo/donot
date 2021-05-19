yum repolist

yum install screen

yum install jq -y

yum install wget

firewall-cmd --permanent --add-port=1635/tcp

#systemctl disable firewalld

#systemctl stop firewalld

curl -s https://raw.githubusercontent.com/ethersphere/bee/master/install.sh | TAG=v0.5.3 bash

bee --help

wget https://github.com/ethersphere/bee-clef/releases/download/v0.4.9/bee-clef_0.4.9_amd64.rpm

sudo rpm -i bee-clef_0.4.9_amd64.rpm

systemctl status bee-clef

wget http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

rpm -ivh epel-release-latest-7.noarch.rpm