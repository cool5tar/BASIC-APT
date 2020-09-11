#!/bin/bash
# Bash Menu Script
cd ~
rm dl-all.sh
cd Make-Your-Sileo

echo "for updating script run dl-all.sh"
echo 'https://discord.gg/dpG9jzM'

sleep 5

echo 'Please enter your choice: '
options=("install-package" "add-source" "list-packages" "repo-menu" "update" "uninstall-basic-apt" "quit")
select opt in "${options[@]}"
do
    case $opt in
        "install-package")
            echo "starting pkg installler..."
            sleep 2
            cd package
            bash package-installer.sh
            ;;
        "add-source")
            echo "Starting..."
            sleep 2
            cd source
            bash sourceadd.sh
            ;;
        "list-packages")
            echo "installing source..."
            sleep 2
            cd repopacks
            bash list.sh
            ;;
        "repo-menu")
            echo "installing all..."
            bash install-all.sh
            ;;
        "update")
            echo "running updater..."
            sleep 2
            cd updater
            bash updater.sh
            ;;
        "uninstall-basic-apt")
            echo "uninstalling..."
            sleep 2
            bash uninstall.sh
            ;;
        "quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done