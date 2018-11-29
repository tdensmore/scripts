# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# FONTS - ~/Library/Fonts https://wesbos.com/programming-fonts/
brew tap caskroom/fonts
## Iconsolata
brew cask install font-inconsolata font-inconsolata-for-powerline
## Source Code Pro
brew cask install font-source-code-pro font-source-code-pro-for-powerline
## ANONYMOUS PRO
brew cask install font-anonymous-pro
## Hermit
brew cask install font-hermit
## Ubuntu
brew cask install font-ubuntu

# Zshell
brew install zsh

# Git
brew install git
mv ./gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

# iTerm2
brew intall awscli
brew install tmux
brew cask install iterm2
brew cask install slack
brew cask install atom
brew cask install dropbox
brew cask install 1password
brew cask install keepingyouawake # dont use amphetamine
brew cask install appcleaner
brew cask install docker
brew cask install google-chrome
brew cask install simplenote # free cross platform notes
brew cask install virtualbox
brew cask install virtualbox-extension-pack
brew cask install diffmerge
brew cask install little-snitch
brew cask install viscosity
brew cask install flux
# iso
# http://releases.ubuntu.com/18.04.1/ubuntu-18.04.1-live-server-amd64.iso?_ga=2.124398850.948042938.1543251609-1439906146.1543251609


# vim
brew install vim
# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#screensavers
cp -r /RedPill.saver/. ~/Library/Screen\ Savers/

# Office
# InkScape

# move ssh keys

# aws credentials

# Remove install files
brew cleanup
