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

Setup YouCompleteMe:

```
sudo apt-get install python-dev cmake
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer --gocode-completer
```

Setup Zing:
```
git clone https://github.com/jewel/zing.git ~/bin/zing

export PATH="$HOME/bin:$HOME/bin/zing:$PATH"

ln -s ~/bin/zing/zing ~/bin/,z
```

Setup Terminal Font and Colors
```
Run Solarized Dark.terminal
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
