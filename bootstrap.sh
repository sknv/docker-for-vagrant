#!/usr/bin/env bash
# Bootstrap the Vagrant environment

# Install dependencies, set locales, set the timezone
sudo apt-get update
sudo apt-get install -y --no-install-recommends \
  apt-transport-https \
  ca-certificates \
  curl \
  language-pack-en language-pack-ru \
  make \
  software-properties-common
sudo update-locale LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
sudo timedatectl set-timezone Europe/Moscow

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Install the Docker repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Install the latest version of Docker
sudo apt-get update
sudo apt-get install -y --no-install-recommends docker-ce

# Allow executing docker without sudo
sudo usermod -aG docker ${USER}

# Install docker-compose
DOCKER_COMPOSE_VERSION=1.28.4
sudo curl \
  -L https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m) \
  -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

echo 'All set, rock on!'
