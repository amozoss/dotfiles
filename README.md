# dotfiles

Setup `~/.gitconfig`:
```
[user]
  email = myemail@email.com
  name = myname
[core]
  editor = /usr/bin/vim
  excludesfile = ~/.global_gitignore
```

Setup vundle:

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim
:PluginInstall
```
Setup vim-undo:
```
mkdir ~/.vim/undo
```
Setup keychain
```
sudo apt install keychain
```

Setup YouCompleteMe:

```
sudo apt-get install python-dev cmake
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer --gocode-completer
```
Mac:
```
brew update; brew uninstall python; brew uninstall vim; brew install python; brew install vim;
~/.vim/bundle/YouCompleteMe/install.sh --clang-completer --gocode-completer
```

Setup Zing:
```
git clone https://github.com/jewel/zing.git ~/bin/zing

export PATH="$HOME/bin:$HOME/bin/zing:$PATH"

ln -s ~/bin/zing/zing ~/bin/,z
```

Setup Terminal Font and Colors
mac:
```
Run Solarized Dark.terminal
```
ubuntu:
https://github.com/Anthony25/gnome-terminal-colors-solarized
```
sudo apt install dconf-cli
git clone https://github.com/Anthony25/gnome-terminal-colors-solarized.git
cd gnome-terminal-colors-solarized
./install.sh
```


Install powerline fonts:
```
git clone --depth 1 https://github.com/powerline/fonts.git
cd fonts
./install.sh
```
Terminal > Preferences > Text > Ubuntu Mono derivative Powerline 14 pt

Install go utilities:
```
:GoInstallBinaries
```
