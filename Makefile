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
	mkdir -p ~/.fonts
	curl "https://raw.githubusercontent.com/Gonzih/inconsolata-lgc-for-powerline/master/Inconsolata%20LGC%20for%20Powerline.ttf" > ~/.fonts/Inconsolata_LGC_for_Powerline.ttf
	sudo fc-cache -rfv
	echo "Fonts install!"

install_silversearcher:
	sudo apt-get install silversearcher-ag

install_zsh:
	sudo apt-get update
	sudo apt-get install zsh
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	chsh -s $(which zsh)

link_zsh:
	ln -sv ${DOTFILES_DIR}/zsh/zsh.conf ~/.zshrc || echo "Error link ~/.zshrc!"
	ln -sv ${DOTFILES_DIR}/zsh/dp-theme.zsh-theme ~/.oh-my-zsh/themes/dp-theme.zsh-theme || echo "Error link zsh theme!"
	source ~/.zshrc

link_git:
	ln -sv ${DOTFILES_DIR}/git/git.conf ~/.gitconfig || echo "Error link git!"
	touch ~/.gitconfig.local

link_aliases:
	ln -sv ${DOTFILES_DIR}/other/aliases ~/.aliases || echo "Error link aliases!"
	touch ~/.aliases.local

