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
