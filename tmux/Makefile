TMUX_DIR = ${DOTFILES_DIR}/tmux

install_tmux: TMUX_VERSION?=2.6
install_tmux:
	sudo apt update
	sudo apt install -y automake build-essential pkg-config libevent-dev libncurses5-dev ncurses-dev
	rm -fr /tmp/tmux
	git clone https://github.com/tmux/tmux.git /tmp/tmux
	cd /tmp/tmux && git checkout ${TMUX_VERSION} && \
	sh autogen.sh && \
	./configure && make && \
	sudo make install && \
	cd - && \
	rm -fr /tmp/tmux

install_tmp:
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

link_tmux:
	ln -sv ${TMUX_DIR}/tmux.conf ~/.tmux.conf || echo "Error link tmux!"

