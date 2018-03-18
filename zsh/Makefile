ZSH_DIR = ${DOTFILES_DIR}/zsh

install_zsh:
	sudo apt-get update
	sudo apt-get install zsh
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	chsh -s $(which zsh)

link_zsh:
	ln -sv ${ZSH_DIR}/zsh.conf ~/.zshrc || echo "Error link ~/.zshrc!"
	ln -sv ${ZSH_DIR}/dp-theme.zsh-theme ~/.oh-my-zsh/themes/dp-theme.zsh-theme || echo "Error link zsh theme!"
	source ~/.zshrc

