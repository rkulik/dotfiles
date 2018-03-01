install: install-zsh install-git install-i3

install-zsh:
	rm -f ~/.zshrc
	rm -rf ~/.zsh-custom
	ln -s `pwd`/zsh/zshrc ~/.zshrc
	ln -s `pwd`/zsh/custom ~/.zsh-custom

install-git:
	rm -f ~/.gitconfig
	ln -s `pwd`/git/gitconfig ~/.gitconfig

install-i3:
	rm -f ~/.config/i3/config
	mkdir -p ~/.config/i3
	ln -s `pwd`/i3/config ~/.config/i3/config
	rm -f ~/.config/i3status/config
	mkdir -p ~/.config/i3status
	ln -s `pwd`/i3/i3status/config ~/.config/i3status/config
