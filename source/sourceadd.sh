#!/bin/bash  
echo "run as root..."
sleep 1
# Read the user input   
  
echo "Enter the source "  
read first_name  
echo "Adding $first_name to sources..."  
sleep 2  
echo "addiing now..."
echo "deb $first_name" | sudo tee -a /etc/apt/sources.list
echo "getting gpg keys..."
echo sudo apt-key adv --fetch-keys $first_name/release.gpg
echo "refreshing sources..."
sudo apt update
echo "refreshed..."
echo "showing available packages..."
apt list
read -r -p "Install deb? [Y/n] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        echo "eg. 'dra1n' from packages list"
        echo "Enter the deb name..."  
        read second_name
        apt-get install $second_name
        echo ""
        ;;
    *)
        echo "stopping script..."
        echo "running menu..."
        cd ..
        bash main.sh
        ;;
esac






