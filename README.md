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

Setup vim-plug:

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim
:PlugInstall
```

Setup vim-undo:

```
mkdir ~/.vim/undo
```

Setup keychain

```
sudo apt install keychain
```

Setup Coc settings

```
ln -s dotfiles/coc-settings.json .vim/
```

Setup IEx

```
ln -s dotfiles/.iex.exs ~/
```

Mac:

```

brew install cmake macvim
~/.vim/plugged/YouCompleteMe/install.py --clang-completer --gocode-completer

```

Setup fzf

```

sudo apt install fzf

```

Mac:

```

brew install fzf

```

setup ripgrep

```

sudo apt install ripgrep

```

Mac:

```

brew install repgrep

```

Setup shellcheck

```

sudo apt install shellcheck

```

Mac:

```

brew install shellcheck

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

Mac fix key repeat

```

defaults write -g InitialKeyRepeat -int 15 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)

```

Remap menu to ctrl

```

setxkbmap -option ctrl:menu_rctrl

```

```

$ vim /etc/default/keyboard
XKBOPTIONS="ctrl:menu_rctrl"

```

Install solargraph

```

gem install solargraph

```

Language servers

```

npm install -g @elm-tooling/elm-language-server

```

### vscode

```

defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false # For VS Code

```

```

```
