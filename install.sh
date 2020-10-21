#!/bin/bash
clear
echo "checking directory to install..."
test -d "$HOME/recon"  && echo "done" || mkdir $HOME/recon
test -d "$HOME/tools"  && echo "done" || mkdir $HOME/tools
clear
fancyfont(){
    sudo apt install toilet lolcat
}

banner(){
    echo "d3vnuLL" | toilet -f smblock -F gay | lolcat
}

if [[ $EUID -ne 0 ]]; then
    clear
    banner
    echo
    echo "[*]Installation starts... "

    read -p "Are you sure you want to continue? [y/N]: " prompt
    if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]
    then
        clear
        banner
        echo ""
        echo "[*] Installation starts... "
        sudo apt-get install golang cargo eyewitness gf-complete-tools libpython2.7-stdlib libcurl4-openssl-dev libssl-dev jq ruby-full libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev build-essential libssl-dev libffi-dev python-dev python-setuptools libldns-dev python3-pip python3-pip python-pip rename awscli -y
        sudo pip install requests 
        sudo pip install dnspython
        sudo pip install argparse
    else
        echo "Thats ok! see you later if you change your mind! :)"
        exit 0
    fi
    for lame in "lolcat"; do
        if ! which $lame &> /dev/null; then
            clear
            banner
            echo "Installing dependency"
            fancyfont
            exit 1
        fi
    done
    for lame in "go"; do
        if ! which $lame &> /dev/null; then
            clear
            banner
            echo "golang based tools installation process going on!"
            go get -u github.com/tomnomnom/httprobe
            go get -u github.com/tomnomnom/assetfinder
            go get -u github.com/tomnomnom/gf
            GO111MODULE=on go get -u -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder
            echo 'source $GOPATH/src/github.com/tomnomnom/gf/gf-completion.bash' >> ~/.bashrc
            cp -r $GOPATH/src/github.com/tomnomnom/gf/examples ~/.gf
            export GOPATH=$HOME/go
            export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
            echo 'export GOROOT=/usr/local/go' >> ~/.bashrc
            echo 'export GOPATH=$HOME/go'  >> ~/.bashrc
            echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bashrc
        fi
    done
    cd sources
    git clone https://github.com/maurosoria/dirsearch.git
    git clone https://github.com/Edu4rdSHL/findomain.git
    git clone https://github.com/aboul3la/Sublist3r.git
    git clone https://github.com/projectdiscovery/subfinder.git
    git clone https://github.com/gwen001/github-search.git
    git clone https://github.com/TheRook/subbrute.git
    git clone https://github.com/karthi-the-hacker/P4R4M-HUNT3R.git
    sudo cp ~/tools/d3vnull/sources/subfinder/cmd/subfinder/subfinder /usr/local/bin/
    sudo pip install -r ~/tools/d3vnull/sources/Sublist3r/requirements.txt
    sudo pip install -r ~/tools/d3vnull/sources/github-search/requirements.txt
    sudo pip install -r ~/tools/d3vnull/sources/github-search/requirements2.txt
    sudo pip install -r ~/tools/d3vnull/sources/github-search/requirements3.txt
    sudo pip3 install -r ~/tools/d3vnull/sources/github-search/requirements.txt
    sudo pip3 install -r ~/tools/d3vnull/sources/github-search/requirements.txt
    sudo pip3 install -r ~/tools/d3vnull/sources/github-search/requirements3.txt
    cd findomain
    cargo build --release
    sudo cp target/release/findomain /usr/bin/
    cd ../
    cd P4R4M-HUNT3R/
    unzip P4R4M-HUNT3R.zip
    pip3 install -r ~/tools/d3vnull/sources/P4R4M-HUNT3R/requirements.txt
    pip install -r ~/tools/d3vnull/sources/P4R4M-HUNT3R/requirements.txt
    cp ~/tools/P4R4M-HUNT3R/P4R4M-HUNT3R/gf_profiles/*.json ~/.gf/
    source ~/.bashrc
    clear
    banner
    echo "[*]Installation is finished!"

else
    echo "You must run this script this script as root!"
    exit 1
fi
