sudo apt-get update -y

apt-get install make -y

apt-get install ssh -y

apt-get install \
	apt-transport-https \
	software-properties-common \
	ca-certificates \
	curl \
	gnupg \
	lsb-release -y

curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

apt-get update -y
apt-get install docker-ce docker-ce-cli -y

sudo apt update
sudo apt install -y curl wget

curl -s https://api.github.com/repos/docker/compose/releases/latest | grep browser_download_url  | grep docker-compose-linux-x86_64 | cut -d '"' -f 4 | wget -qi -

chmod +x docker-compose-linux-x86_64

sudo mv docker-compose-linux-x86_64 /usr/local/bin/docker-compose

sudo usermod -aG docker $USER
newgrp docker

docker-compose version
docker -version
