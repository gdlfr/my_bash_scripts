#!/bin/bash

help()
{
    echo "1"
    echo "2"
    echo "3"
    echo "4"
    echo "5"
    exit 1
}
if [ "$1" == "--" ] || [[ "$1" =~ ^-$ ]] || ! [[ "$1" =~ ^- ]]; then
        help
else
	echo "Exit"
fi
