# my-vimrc
My configuration of vimrc. Clone this when configuring a new computer.

## Setup Procedure

1. Install Vundle, a vim package management tool.
    ```
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    ```
1. Copy the content of file `my-vimrc` into `~/.vimrc`.
1. Run `:PluginInstall` in Vim to install vundle packages.
1. Install YouCompleleteMe package with the following script:
    ```
    cd ~/.vim/bundle/YouCompleteMe
    python3 install.py --clang-completer
    ```

## Package List
1. VundleVim: package management
1. vim-fugitive: version control
1. nerd-tree: file tree
1. vim-airline/vim-airline-themes: status bar
1. youcompleteme: auto completion

## Other Setup
1. Subsitute 4 spaces with tabs
1. 80 char limits

## TODO
1. Write a script to automate the above procedures.