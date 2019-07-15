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

## TODO
1. Write a script to automate the above procedures.
