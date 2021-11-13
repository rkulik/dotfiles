install: install-sh install-zsh install-git install-helpers install-screenlayouts install-x install-i3 install-i3blocks

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

install-helpers:
	rm -f ~/.helpers/brightness
	rm -f ~/.helpers/cpu-temperature
	mkdir -p ~/.helpers
	ln -s `pwd`/helpers/brightness ~/.helpers/brightness
	ln -s `pwd`/helpers/cpu-temperature ~/.helpers/cpu-temperature

install-screenlayouts:
	rm -f ~/.screenlayout/laptop.sh
	rm -f ~/.screenlayout/monitor.sh
	rm -f ~/.screenlayout/laptop-and-monitor.sh
	mkdir -p ~/.screenlayout
	ln -s `pwd`/screenlayout/laptop.sh ~/.screenlayout/laptop.sh
	ln -s `pwd`/screenlayout/monitor.sh ~/.screenlayout/monitor.sh
	ln -s `pwd`/screenlayout/laptop-and-monitor.sh ~/.screenlayout/laptop-and-monitor.sh

install-x:
	rm -f ~/.xsessionrc
	rm -f ~/.Xresources
	ln -s `pwd`/x/xsessionrc ~/.xsessionrc
	ln -s `pwd`/x/Xresources ~/.Xresources

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
