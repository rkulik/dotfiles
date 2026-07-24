install: install-sh install-zsh install-git

install-sh:
	rm -f ~/.myprofile
	ln -s `pwd`/sh/myprofile ~/.myprofile

install-zsh:
	rm -f ~/.zshrc
	rm -rf ~/.zsh-custom
	ln -s `pwd`/zsh/zshrc ~/.zshrc
	ln -s `pwd`/zsh/custom ~/.zsh-custom

install-git:
	rm -f ~/.gitconfig
	ln -s `pwd`/git/gitconfig ~/.gitconfig

install-ulauncher:
	mkdir -p ~/.config
	rm -rf ~/.config/ulauncher
	ln -s `pwd`/ulauncher ~/.config/ulauncher

install-flameshot:
	mkdir -p ~/.local/bin
	rm -f ~/.local/bin/flameshot-gui-workaround
	ln -s `pwd`/flameshot/flameshot-gui-workaround ~/.local/bin/flameshot-gui-workaround

configure-gnome:
	`pwd`/gnome/set-settings
	`pwd`/gnome/set-extensions
	`pwd`/gnome/set-keyboard-shortcuts
