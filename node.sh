#!/bin/sh

clear
	echo "\n${CYAN}Downloading Nodejs into your Downloads Folder!${WHITE}"
	echo "PRESS: 1 for ${GREEN}Latest_Features${WHITE} AND 2 for ${RED}Recommended${WHITE}\n"

	select yn in "Latest_Features" "Recommended"; do
		case $yn in
			Latest_Features )
				curl "https://nodejs.org/en/download/current/" > test.txt
				output=$(grep "Latest Current Version" test.txt| cut -d'>' -f3 | cut -d'<' -f1)
				curl "https://nodejs.org/dist/v$output/node-v$output.tar.gz" | tar -xf - -C /goinfre/$USER/Downloads || exit 1
				cd $output
				./configure
				make -j4
				echo "export PATH=$HOME/bin:"$PWD:$PWD/out/bin:$PWD/deps/npm/bin:$PATH >> ~/.zshrc
				echo "alias npm='npm-cli.js'" >> ~/.zshrc
				source ~/.zshrc
				echo "Please open a new terminal and please refer to the README for final setup"
				break;;
			Recommended )
				curl "https://nodejs.org/en/download/" > test.txt
				output=$(grep "Latest LTS Version" test.txt| cut -d'>' -f3 | cut -d'<' -f1)
				curl "https://nodejs.org/dist/v$output/node-v$output.tar.gz" | tar -xf - -C /goinfre/$USER/Downloads || exit 1
				cd $output
				./configure
				make -j4
				echo "export PATH=$HOME/bin:"$PWD:$PWD/out/bin:$PWD/deps/npm/bin:$PATH >> ~/.zshrc
				echo "alias npm='npm-cli.js'" >> ~/.zshrc
				source ~/.zshrc
				echo "Please open a new terminal and please refer to the README for final setup"
				break;;
		esac
	break;


done
