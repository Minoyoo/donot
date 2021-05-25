mkfs.xfs /dev/vdb

mkdir -p /home/data

mount /dev/vdb /home/data

echo "/dev/vdb /home/data xfs defaults 1 2" >> /etc/fstab 

mount -a

#mkdir -p /root/.ssh

#echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC6NcW/Tc3rcL+lDbtAOHiaup14YJzpZpaXdYPoV7ddPnJwKThXGpv/EBynzaAotvKnH1rfHzqKEw3GEYBKfePNhQsTHXjb2KfU5PfNyrV7Z+XsusmYGp/1TGRsfqvimtwZRVKiU6K+KV2ji0t60ZFgrQJKApQPC2SxcjKYTzCxrbx4NplWJHhB3B7Z/ew/OjWY4Z/LUwiF9EM2wtFdmHpXTsWc4Wa904hnylHISksQfPB0Sdu66ZttbsafnxHimov0U5Pc5abuFxnmmXPqS4tBQpnIc5On/cjSPu43BlXUATwDxTsb6fIxGk9JmSAQRuLqKRgOGupNU9R90/uyUNAv"  >>  /root/.ssh/authorized_keys
echo "sh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDZRcqbc14U5wUzCaczRvzIWgVXr6JsQaUSc6uXOhwAePdUKzLjbr6p5YXtXBlLaeL/DyivNRq9j6PswiZ7nNqdre/K35Yl9Akw3u4NqSLm8LpD3ZkPP0PR8Ld7Nmp06ZhuGzMZift0/aHraBqPzOqOWjyklhTiOmt+x5E4G/2qoC472RqI0CFzw08CKW0Yw2rp16MOMflgg6i2pDB9Mvvrl8tgf1+LUzRHSfmzdQfHaSGtCxFdzVYgnZCnGDtoThhAYAQYoxmi97EZ3hTuk8HGlEQ8lBd+C1wyGF9K2hcdeNYDcKa8RL7/gOduYzflXyHKF/1+x9xuDRAo1wC4a41BtohfbO3oag21QmSyYq7k59I2lKzSou4/uCOEzVfLyKv4SloA67hgrBsd5xZ3MGXykzefJf+DJXq/iu+kEUHTYEiINMZNRCePX8L7x2hGBBOfner5qnvMtZN9A5hjIXsO+didjaHB1uerhy2E8OArmMnJiZ0tyQf+b3HOEc5oFFs= jessic@JessicdeMacBook-Air.local"  >>  /root/.ssh/authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCp18HZ1NA62V7t4oNYOQuNoY8wgnnvxSjQVOWwzSNZoblqo5UNv95BiKqQO8xI7EwWsLIG9msigqbj4p/7NtLjHORGBg306Vif1Uf7UUYioFR8JMzFH4KT0Z15eSH4MLKnq1q5nZ+YKUE5AT7wrm7mSTJqdsY+lIjK5lsBFsm+HdjKKuFUysN3SiXJC7ZRtoVtb9Otjs7p2+Rf5vwVnRUgJLG3TEclWnICVrCcZVN/h+TguSlt9KaHq7VtJKnIh/4HFts/jfOymzTA5OHdJhtv9Mp2sPA+VeVXQIMvOzcsrfc8Ca57NMtLDOA7yD81Z3yKAnv6oVt+bXG8RG5c3itDHvyEh9VjLaYz8uFULpa+emJ4FJYMZNjeRVnjy+ltPtQZHf6XOsCyXCrO3beWzuhx0+xusO7iF4hdMdyO87fM55QlXaU4rKPU2Rc4mfxLdhGI0wU6h2UEfdF7xzFOMcLG77Aq/dr14AuKRGfPPx0bQr6RRa5u44T5+LEkmCkblTU="

yum update -y

yum repolist -y

yum install screen -y

yum install jq -y

yum install wget -y

yum install expect -y 

firewall-cmd --permanent --add-port=1635/tcp

systemctl disable firewalld

systemctl stop firewalld


#install bee-clef
wget https://github.com/ethersphere/bee-clef/releases/download/v0.4.12/bee-clef_0.4.12_amd64.rpm
sudo rpm -i bee-clef_0.4.12_amd64.rpm

systemctl status bee-clef

#install bee
wget https://github.com/ethersphere/bee/releases/download/v0.6.1/bee_0.6.0_amd64.rpm
sudo rpm -i bee_0.6.0_amd64.rpm

#if succed
bee --help

#install epel
wget http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

rpm -ivh epel-release-latest-7.noarch.rpm

wget -O cashout.sh https://gist.githubusercontent.com/ralph-pichler/3b5ccd7a5c5cd0500e6428752b37e975/raw/7ba05095e0836735f4a648aefe52c584e18e065f/cashout.sh

chmod a+x cashout.sh

expect /root/donot/create.sh
#start.sh
#sh /root/donot/start.sh
#bee start   --verbosity 5   --swap-endpoint http://172.104.45.51:8545  --debug-api-enable --clef-signer-enable  --clef-signer-endpoint /var/lib/bee-clef/clef.ipc --config /root/donot/bee-config.yaml

