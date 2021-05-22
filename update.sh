yum remove bee -y

rm bee_0.* -f

wget https://github.com/ethersphere/bee/releases/download/v0.6.0/bee_0.6.0_amd64.rpm

sudo rpm -i bee_0.6.0_amd64.rpm

sh start.sh