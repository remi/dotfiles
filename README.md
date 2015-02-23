## Hello

Welcome to my Vim configuration files.

## Usage

Even if this repository is designed so that you can use it as a complete Vim configuration directory, a better way to use it would be to clone it in a separate directory and browse its content for settings, key mappings and plugins that you think might be interesting to you.

```shell
$ git clone git://github.com/remiprev/vimfiles.git ~/.vim-remiprev
$ cd ~/.vim-remiprev && vim -c "PlugInstall"
```

A good piece of advice if you are starting to customize your Vim experience is to never add something you do not understand in your `.vimrc`.

```shell
# Oh, I just learned how to define the leader key in Rémi’s settings.vim, let’s add it to my .vimrc!
$ echo "let mapleader = ','" >> .vimrc
$ echo "let g:mapleader = ','" >> .vimrc
```

This will prevent you from ending up with a bloated `.vimrc` file **and** you’ll always know whether a certain behavior is Vim’s default or not.

## Instructions

If you wish to use **all** my Vim configuration files (do you *really* trust me?), this is the recommended method:

```shell
# Start from the home directory and backup the current vim files
$ cd ~
$ mv .vim .vim-old
$ mv .vimrc .vimrc-old
$ mv .gvimrc .gvimrc-old

# Create a few local directories
$ mkdir -p ~/.vim-local/.vimbackup
$ mkdir -p ~/.vim-local/.vimswap
$ mkdir -p ~/.vim-local/.undo

# Clone the repository and initialize submodules
$ git clone git://github.com/remiprev/vimfiles.git .vim

# Create symlinks for .vimrc and .gvimrc files
$ ln -s ~/.vimrc ~/.vim/.vimrc
$ ln -s ~/.gvimrc ~/.vim/.gvimrc

# Install vim-plug plugins
$ vim -c "PlugInstall"
```
