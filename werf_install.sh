sudo apt update && sudo apt upgrade
sudo apt install linux-image-extra-$(uname -r) linux-image-extra-virtual
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update && apt-cache policy docker-ce
sudo apt install -y docker-ce
sudo groupadd docker
sudo usermod -aG docker $USER

sudo apt install git

# add ~/bin into PATH
export PATH=$PATH:$HOME/bin
echo 'export PATH=$PATH:$HOME/bin' >> ~/.bashrc

# install multiwerf into ~/bin directory
mkdir -p ~/bin
cd ~/bin
curl -L https://raw.githubusercontent.com/flant/multiwerf/master/get.sh | bash

. $(multiwerf use 1.0 stable --as-file)
type multiwerf && . $(multiwerf use 1.0 stable --as-file)
echo '. $(multiwerf use 1.0 stable --as-file)' >> ~/.bashrc
