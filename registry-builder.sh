#
# This script will make it easier your private docker registry 
# build process on Ubuntu 18.04.
# It may require press enter during works.
#
# Do not forget to replace "domain.com" with your own domain.
#
# Sample usage:
# ./registry-builder.sh your-registry-username
#

# update package sources for apt
sudo apt update

# install docker 
sudo apt install docker.io

# install docker compose via curl
# version 1.21.2
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
mkdir /root/docker-registry

# set permissions for executable
sudo chmod +x /usr/local/bin/docker-compose

# install nginx
sudo apt install nginx

# set firewall whitelist for nginx (ufw - digitalocean)
sudo ufw allow 'Nginx HTTP'

# make nginx configurations
sudo mv domain.com /etc/nginx/sites-available/domain.com
sudo ln -s /etc/nginx/sites-available/domain.com /etc/nginx/sites-enabled/
mv nginx.conf /etc/nginx/nginx.conf

# get docker-compose yaml file for registry
wget docker-compose.yaml

# restart nginx
nginx -s reload

# run
docker-compose up -d
