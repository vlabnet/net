#!/usr/bin/env bash

mainmenu() {
    echo -ne "
MAIN MENU
1) CMD1
0) Exit
Choose an option:  "
    read -r ans
    case $ans in
    1)
        submenu
        mainmenu
        ;;
    0)
        echo "Bye bye."
        exit 0
        ;;
    *)
        echo "Wrong option."
        exit 1
        ;;
    esac
}

mainmenu
