sudo apt install docker
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
