install: install-zsh install-git install-screenlayouts install-x install-i3 install-i3blocks

install-zsh:
	rm -f ~/.zshrc
	rm -rf ~/.zsh-custom
	ln -s `pwd`/zsh/zshrc ~/.zshrc
	ln -s `pwd`/zsh/custom ~/.zsh-custom

install-git:
	rm -f ~/.gitconfig
	ln -s `pwd`/git/gitconfig ~/.gitconfig

install-screenlayouts:
	rm -f ~/.screenlayout/work.sh
	rm -f ~/.screenlayout/laptop.sh
	rm -f ~/.screenlayout/home.sh
	mkdir -p ~/.screenlayout
	ln -s `pwd`/scripts/screenlayouts/work.sh ~/.screenlayout/work.sh
	ln -s `pwd`/scripts/screenlayouts/laptop.sh ~/.screenlayout/laptop.sh
	ln -s `pwd`/scripts/screenlayouts/home.sh ~/.screenlayout/home.sh

install-x:
	rm -f ~/.xsessionrc
	ln -s `pwd`/x/xsessionrc ~/.xsessionrc

install-i3:
	mkdir -p ~/Pictures/Screenshots
	rm -f ~/Pictures/Wallpapers/wallpaper.png
	mkdir -p ~/Pictures/Wallpapers
	ln -s `pwd`/wallpaper.png ~/Pictures/Wallpapers/wallpaper.png
	rm -f ~/.config/i3/config
	mkdir -p ~/.config/i3
	ln -s `pwd`/i3/config ~/.config/i3/config
	rm -f ~/.config/i3status/config
	mkdir -p ~/.config/i3status
	ln -s `pwd`/i3/i3status/config ~/.config/i3status/config

install-i3blocks:
	rm -f ~/.i3blocks.conf
	ln -s `pwd`/i3/i3blocks/config ~/.i3blocks.conf
