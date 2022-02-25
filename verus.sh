#!/bin/sh


try="y"
while [ $try = "y" ]
do
  clear
	echo "\033[1;31m __  __ _       _               ____             _"
		echo "|  \/  (_)_ __ (_)_ __   __ _  |  _ \ ___   ___ | |"
		echo "| |\/| | | '_ \| | '_ \ / _' | | |_) / _ \ / _ \| |"
		echo "| |  | | | | | | | | | | (_| | |  __/ (_) | (_) | |"
		echo "|_|  |_|_|_| |_|_|_| |_|\__, | |_|   \___/ \___/|_|"
		echo "                         |___/"
		echo "            \033[1;32m  ccminer VERUS Installer\n\n"
		echo "\033[1;32m"
		echo -n "Do Tou Want To Continue (Y/N) : "
  read select;
  if [ $select = "y" ]||[ $select = "Y" ]
  then
      echo "Installing Starting....!"
      apt update && apt upgrade -y
      apt install git build-essential cmake libuv1-dev libmicrohttpd-dev libssl-dev -y
      apt install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential
      pkg install automake build-essential curl git gnupg openssl nano
      pkg install clang
      pkg install gcc-10
      curl -s https://its-pointless.github.io/setup-pointless-repo.sh | bash
      setupgcc-10
      setup-patchforgcc
      git clone --single-branch -b ARM https://github.com/altherna/ccminer.git
      cd ccminer
      libtoolize
      ./build.sh -j5
      echo "Installing Successful"
      exit
  elif [ $select = "n" ]||[ $select = "N" ]
  then
      echo "\033[1;31m Bye Bye.....!"
      sleep 2
      exit
  else
     echo "\033[1;31mERROr : Wrong Input....!"
     sleep 2
  fi
done
