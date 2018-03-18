SYSTEM_DIR = ${DOTFILES_DIR}/system

download_font:
	rm -rf fonts && git clone https://github.com/powerline/fonts.git --depth=1
	(cd fonts && ./install.sh)
	rm -rf fonts
	mkdir -p ~/.fonts
	curl "https://raw.githubusercontent.com/Gonzih/inconsolata-lgc-for-powerline/master/Inconsolata%20LGC%20for%20Powerline.ttf" > ~/.fonts/Inconsolata_LGC_for_Powerline.ttf
	curl "https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/InconsolataLGC/Regular/complete/Inconsolata%20LGC%20Nerd%20Font%20Complete.ttf" > ~/.fonts/Inconsolata_LGC_Nerd.ttf
	curl "https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/InconsolataLGC/Italic/complete/Inconsolata%20LGC%20Italic%20Nerd%20Font%20Complete.ttf" > ~/.fonts/Inconsolata_LGC_Nerd_Italic.ttf
	curl "https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/InconsolataLGC/Bold/complete/Inconsolata%20LGC%20Bold%20Nerd%20Font%20Complete.ttf" > ~/.fonts/Inconsolata_LGC_Nerd_Bold.ttf
	curl "https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/InconsolataLGC/Bold-Italic/complete/Inconsolata%20LGC%20Bold%20Italic%20Nerd%20Font%20Complete.ttf" > ~/.fonts/Inconsolata_LGC_Nerd_Bold_Italic.ttf
	sudo fc-cache -rfv
	echo "Fonts install!"

install_silver_searcher:
	sudo apt-get install silversearcher-ag

link_aliases:
	ln -sv ${SYSTEM_DIR}/aliases ~/.aliases || echo "Error link aliases!"
	touch ~/.aliases.local

