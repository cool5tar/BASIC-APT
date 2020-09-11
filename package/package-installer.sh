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