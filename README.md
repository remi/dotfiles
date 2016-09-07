# dotfiles

The _recommended_ way to use these files is to take a look at their content and
copy/paste only what you need into _your_ dotfiles. This will allow you to
truly master your dotfiles, as you’ll know what is the purpose of each
individual line.

However, if you’d like to blindly use my files, here’s how you’d do it. Please
note that stuff might not work 100% since they might reference some local
files and/or directories on my machine.

```bash
# zsh
$ ln -s /path/to/dotfiles/zsh ~/.zsh
$ ln -s /path/to/dotfiles/zsh/zshrc ~/.zshrc

# vim
$ ln -s /path/to/dotfiles/vim ~/.vim
$ ln -s /path/to/dotfiles/vim ~/.vim/.vim
$ ln -s /path/to/dotfiles/vim/vimrc ~/.vimrc
$ ln -s /path/to/dotfiles/vim/vimrc ~/.vim/init.vim

# tmux
$ ln -s /path/to/dotfiles/tmux/tmux.conf ~/.tmux.conf

# git
$ ln -s /path/to/dotfiles/git/gitignore_global ~/.gitignore_global
$ ln -s /path/to/dotfiles/git/gitconfig ~/.gitconfig

# tig
$ ln -s /path/to/dotfiles/tig/tigrc ~/.tigrc

# irb
$ ln -s /path/to/dotfiles/irb/irbrc ~/.irbrc

# iex
$ ln -s /path/to/dotfiles/iex/iex.exs ~/.iex.exs

# misc
$ ln -s /path/to/dotfiles/misc/inputrc ~/.inputrc
```
