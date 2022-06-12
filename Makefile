install: install-sh install-zsh install-git configure-gnome

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

configure-gnome:
	gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "['<Super>Return']"
	gsettings set org.gnome.settings-daemon.plugins.media-keys home "['<Super>e']"
	gnome-extensions disable ubuntu-dock@ubuntu.com
