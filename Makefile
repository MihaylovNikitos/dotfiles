DOTFILES_DIR?=$(abspath .)

install_nvim:
	sudo apt-get update

	# Install neovim
	sudo apt-get install software-properties-common
	sudo apt-get install python-software-properties
	sudo apt-get install python-dev python-pip python3-dev python3-pip

	sudo add-apt-repository ppa:neovim-ppa/stable
	sudo apt-get update
	sudo apt-get install neovim

	## Install Plug for neovim
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

link_nvim:
	ln -sv ${DOTFILES_DIR}/nvim ~/.config/nvim || echo "Not link neovim config"

download_font:
	rm -rf fonts && git clone https://github.com/powerline/fonts.git --depth=1
	(cd fonts && ./install.sh)
	rm -rf fonts
	curl "https://raw.githubusercontent.com/Gonzih/inconsolata-lgc-for-powerline/master/Inconsolata%20LGC%20for%20Powerline.ttf" > ~/.fonts/Inconsolata_LGC_for_Powerline.ttf
	sudo fc-cache -rfv
	echo "Fonts install!"

install_silversearcher:
	sudo apt-get install silversearcher-ag
