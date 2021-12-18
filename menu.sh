#!/usr/bin/env bash


PS3='Please enter your choice: '
options=("docker.cp" "Setup" "X" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "docker.cp")
            docker-compose up -d
            ;;
        "Setup")
            chmod +x setup.sh
            bash setup.sh
            ;;
        "Option 3")
            echo "x"
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done