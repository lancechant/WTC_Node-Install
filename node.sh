#!/bin/sh

clear
	echo "\n${CYAN}Downloading Nodejs into your Downloads Folder!${WHITE}"
	echo "PRESS: 1 for ${GREEN}Latest_Features${WHITE} AND 2 for ${RED}Recommended${WHITE}\n"

	select yn in "Latest_Features" "Recommended"; do
		case $yn in
			Latest_Features )
				curl "https://nodejs.org/dist/v11.4.0/node-v11.4.0.tar.gz" | tar -xf - -C /goinfre/$USER/Downloads || exit 1
				cd /goinfre/$USER/Downloads/node-v11.4.0
				./configure
				make -j4
				echo "export PATH=$HOME/bin:"$PWD:$PWD/out/bin:$PWD/deps/npm/bin:$PATH >> ~/.zshrc
				echo "alias npm='npm-cli.js'" >> ~/.zshrc
				source ~/.zshrc
				echo "Please open a new terminal"
				break;;
			Recommended )
				curl "https://nodejs.org/dist/v10.14.1/node-v10.14.1.tar.gz" | tar -xf - -C /goinfre/$USER/Downloads || exit 1
				cd /goinfre/$USER/Downloads/node-v10.14.1
				./configure
				make -j4
				echo "export PATH=$HOME/bin:"$PWD:$PWD/out/bin:$PWD/deps/npm/bin:$PATH >> ~/.zshrc
				echo "alias npm='npm-cli.js'" >> ~/.zshrc
				source ~/.zshrc
				echo "Please open a new terminal"
				break;;
		esac
	break;


done
