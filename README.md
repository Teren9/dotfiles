## Things to make the dotfiles work.
### .vimrc

For this to work correctly you need to install Vundle. 
Use this command:
```
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
For zsh:
```
sudo apt install zsh
chsh -s $(which zsh)
```

For terminal base16 colors: 
```
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
```

For disabling the 'Caps Lock' key:

Add this command:
```
xmodmap ~/.Xmodmap
```
To the user startup commands.
