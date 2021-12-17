#!/usr/bin/env bash


PS3='Please enter your choice: '
options=("docker.cp" "X" "X" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "docker.cp")
            docker-compose up -d
            ;;
        "Option 2")
            echo "x"
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