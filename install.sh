#!/bin/bash


clear
mkdir ~/recon
mkdir ~/tools



echo "--------------------------------WarninG-------------------------------"
sleep 2
echo "-----------------it will update and upgrade your OS-------------------"
echo "---if you turn off your machine by accidentlally OS will be crash-----"
echo ""
sleep 2 
echo "------------if you want to stop this process press ctrl + Z------------"
echo "------------or leave it .it will start within 10 second----------------"
sleep 10

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get install cargo
sudo apt install eyewitness
sudo apt-get install python-requests
sudo apt-get install gf-complete-tools
sudo pip install requests
sudo apt-get install python-dnspython
sudo apt-get install python-argparse
sudo pip install dnspython
sudo pip install argparse
sudo apt-get install -y libcurl4-openssl-dev
sudo apt-get install -y libssl-dev
sudo apt-get install -y jq
sudo apt-get install -y ruby-full
sudo apt-get install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
sudo apt-get install -y build-essential libssl-dev libffi-dev python-dev
sudo apt-get install -y python-setuptools
sudo apt-get install -y libldns-dev
sudo apt-get install -y python3-pip
sudo apt-get install -y python-pip
sudo apt-get install -y python-dnspython
sudo apt-get install -y git
sudo apt-get install -y rename
sudo apt-get install -y xargs
sudo apt install -y awscli
echo "Installing Golang"
wget https://dl.google.com/go/go1.13.4.linux-amd64.tar.gz
sudo tar -xvf go1.13.4.linux-amd64.tar.gz
sudo mv go /usr/local
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
echo 'export GOROOT=/usr/local/go' >> ~/.bashacker
echo 'export GOPATH=$HOME/go'	>> ~/.bashacker			
echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bashacker


go get -u github.com/tomnomnom/httprobe
go get -u github.com/tomnomnom/assetfinder
go get -u github.com/tomnomnom/gf
echo 'source $GOPATH/src/github.com/tomnomnom/gf/gf-completion.bash' >> ~/.bashrc
cp -r $GOPATH/src/github.com/tomnomnom/gf/examples ~/.gf

cd sources
git clone https://github.com/maurosoria/dirsearch.git
git clone https://github.com/Edu4rdSHL/findomain.git
git clone https://github.com/aboul3la/Sublist3r.git
git clone https://github.com/projectdiscovery/subfinder.git
git clone https://github.com/gwen001/github-search.git
git clone https://github.com/TheRook/subbrute.git
git clone https://github.com/maurosoria/dirsearch.git
git clone https://github.com/karthi-the-hacker/P4R4M-HUNT3R.git


sudo cp ~/tools/d3vnull/sources/subfinder/cmd/subfinder/subfinder /usr/local/bin/

sudo pip install -r ~/tools/d3vnull/sources/Sublist3r/requirements.txt

sudo pip install -r ~/tools/d3vnull/sources/github-search/requirements.txt
sudo pip install -r ~/tools/d3vnull/sources/github-search/requirements2.txt
sudo pip install -r ~/tools/d3vnull/sources/github-search/requirements3.txt
sudo pip3 install -r ~/tools/d3vnull/sources/github-search/requirements.txt
sudo pip3 install -r ~/tools/d3vnull/sources/github-search/requirements2.txt
sudo pip3 install -r ~/tools/d3vnull/sources/github-search/requirements3.txt

cd subfinder/v2/cmd/subfinder
go build
mv subfinder /usr/local/bin/
cd ../../../../

cd findomain
cargo build --release
sudo cp target/release/findomain /usr/bin/
cd ../

cd P4R4M-HUNT3R/
unzip P4R4M-HUNT3R.zip
rm P4R4M-HUNT3R.zip
pip3 install -r ~/tools/d3vnull/sources/P4R4M-HUNT3R/requirements.txt
pip install -r ~/tools/d3vnull/sources/P4R4M-HUNT3R/requirements.txt
cp ~/tools/P4R4M-HUNT3R/P4R4M-HUNT3R/gf_profiles/*.json ~/.gf/ 
source ~/.bashrc
clear

echo " installation completed 100%"
