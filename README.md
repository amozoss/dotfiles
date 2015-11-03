# dotfiles

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
