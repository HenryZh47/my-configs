# my-vimrc
My configuration of vimrc. Clone this when configuring a new computer.

## Setup (TODO: this needs to be updated for neovim and coc)
1. Make sure vim is installed on this machine.
1. Change the permission of the setup file: `chmod +x ./setup.sh`
1. Run setup script: `./setup.sh`

## Neovim
Build Neovim from source for latest features.

## COC (Conquer of Completion) packages
1. coc-snippets
1. coc-pairs
1. coc-json
1. coc-highlight
1. coc-list
1. coc-python
1. coc-prettier

## clangd linting and completion
* export `compile_commands.json` for each of the packages:

    ```
    cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
    ```

* combine the `.json` files to the root directory:

    ```
    cat ./build/**/compile_commands.json > compile_commands.json && sed -i -e ':a;N;$!ba;s/\]\n*\[/,/g' compile_commands.json
    ```

## Key-bindings
1. show all completion (insert mode): Ctrl+n / Ctrl+p
1. delete forward (insert mode): Ctrl+h

## Manual Setup Procedure (TODO: this also needs to change)

1. Install Vundle, a vim package management tool.
    ```
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    ```
1. Copy the content of file `my-vimrc` into `~/.vimrc`.
1. Run `:PluginInstall` in Vim to install vundle packages.
1. Install YouCompleleteMe package with the following script:
    * Install dependencies
    ```
    sudo apt-get install build-essential cmake python3-dev
    ```
    * Install `youcompleteme` package
    ```
    cd ~/.vim/bundle/youcompleteme
    python3 install.py --clang-completer
    ```

## Package List
1. VundleVim: package management
1. vim-fugitive: version control
1. nerd-tree: file tree
1. vim-airline/vim-airline-themes: status bar
1. youcompleteme: auto completion
1. NERD comenter: handy comment tool
1. Incremental search: high light search patterns incrementally

## Other Setup
1. Subsitute tabs with 2 spaces 
1. 80 char limits
1. Relative line number
