#! /usr/bin/bash
echo "Please Wait. Installing Requirements,"
sudo apt-get install aircrack-ng
sudo apt-get install figlet
figlet Sh-bharat

sudo airmon-ng
read -p "Enter Wireless Interface Name :- " interface_name

echo "1) Start Monitor Mode"
echo "2) Stop Monitor Mode"
echo "3) Exit"
read -p "Choose One Option :- " option
case $option in 
	"1")
		sudo airmon-ng check kill
		sudo airmon-ng start $interface_name
		echo "Monitor Mode Enabled Successfully" ;;
	"2")
		sudo airmon-ng stop $interface_name
		echo "Monitor Mode Disabled Successfully" ;;
	"3")
		echo "Thanks for Choosing. ";;
	*)
		echo "Wrong Option Choosen. ";;
esac
