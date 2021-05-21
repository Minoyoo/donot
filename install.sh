mkfs.xfs /dev/vdb

mkdir -p /home/data

mount /dev/vdb /home/data

echo "/dev/vdb /home/data xfs defaults 1 2" >> /etc/fstab 

mkdir -p /root/.ssh

echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC6NcW/Tc3rcL+lDbtAOHiaup14YJzpZpaXdYPoV7ddPnJwKThXGpv/EBynzaAotvKnH1rfHzqKEw3GEYBKfePNhQsTHXjb2KfU5PfNyrV7Z+XsusmYGp/1TGRsfqvimtwZRVKiU6K+KV2ji0t60ZFgrQJKApQPC2SxcjKYTzCxrbx4NplWJHhB3B7Z/ew/OjWY4Z/LUwiF9EM2wtFdmHpXTsWc4Wa904hnylHISksQfPB0Sdu66ZttbsafnxHimov0U5Pc5abuFxnmmXPqS4tBQpnIc5On/cjSPu43BlXUATwDxTsb6fIxGk9JmSAQRuLqKRgOGupNU9R90/uyUNAv"  >>  /root/.ssh/authorized_keys


mount -a

yum update -y

yum repolist

yum install screen

yum install jq -y

yum install wget

firewall-cmd --permanent --add-port=1635/tcp

systemctl disable firewalld

systemctl stop firewalld


#install bee-clef
wget https://github.com/ethersphere/bee-clef/releases/download/v0.4.9/bee-clef_0.4.9_amd64.rpm
sudo rpm -i bee-clef_0.4.9_amd64.rpm

systemctl status bee-clef

#install bee
wget https://github.com/ethersphere/bee/releases/download/v0.5.3/bee_0.5.3_amd64.rpm
sudo rpm -i bee_0.5.3_amd64.rpm

#if succed
bee --help

#install epel
wget http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

rpm -ivh epel-release-latest-7.noarch.rpm

#start.sh
sh /root/donot/start.sh
#bee start   --verbosity 5   --swap-endpoint http://172.104.45.51:8545  --debug-api-enable --clef-signer-enable  --clef-signer-endpoint /var/lib/bee-clef/clef.ipc --config /root/donot/bee-config.yaml

