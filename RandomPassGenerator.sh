#!/bin/bash
#Random Password Generator
echo "Hello User! This is a password Generator."
echo "Please enter the length that you would like your password to have"
read LENGTH

echo "Please select between hex or base64 according to how strong you wish your password to be"
read ENCODING

echo "Finally select the amount of passwords that you would like to be generted. If you wish to generate only one single password, please let this field empty"
read AMOUNT

for i in $(seq 1 $AMOUNT); do
	openssl rand -$ENCODING	48 | cut -c1-$LENGTH
done
