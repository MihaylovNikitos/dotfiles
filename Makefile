DOTFILES_DIR?=$(abspath .)

-include git/Makefile
-include nvim/Makefile
-include system/Makefile
-include tmux/Makefile
-include zsh/Makefile
