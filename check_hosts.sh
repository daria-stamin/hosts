#!/bin/bash

functie(){
	name=$1
	ip=$2
	dns=$3
	check=$(nslookup $name $dns | awk '/^Adress: / {print $2}')

	if ["$ip" = "$check" ]; then
	echo "Okey"
	else
	echo "Bogus IP for {$name} in /etc/hosts!"
	fi
	}
done
exit 0
