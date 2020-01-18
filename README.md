# my-vimrc
My configuration of vimrc. Clone this when configuring a new computer.

## Setup (TODO: this needs to be updated for neovim and coc)
1. Make sure vim is installed on this machine.
1. Change the permission of the setup file: `chmod +x ./setup.sh`
1. Run setup script: `./setup.sh`

## Neovim
Build Neovim from source for latest features.
1. clone git repo

    ```
    git clone https://github.com/neovim/neovim.git
    ```

1. build and install neovim

    ```
    make CMAKE_BUILD_TYPE=RelWithDebInfo
    sudo make install
    ```

## VimPlug
Install VimPlug package tool for neovim
    
    ```
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    ```

## COC (Conquer of Completion) packages
1. Install nodejs

    ```
    curl -sL install-node.now.sh/lts | bash
    ```

1. Install with `CocInstall <package name>`
    * coc-snippets
    * coc-pairs
    * coc-json
    * coc-highlight
    * coc-list
    * coc-python
    * coc-prettier
    * coc-texlab

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
1. show diagnostics: Space+a
1. show all extensions: Space+e
1. new tab: tn
1. close tab: tw
1. next tab: tl
1. previous tab: th

## Package List
1. VimPlug: package management
1. coc.nvim: Conquer of Completion
1. vim-easy-align: alignment
1. vim-fugitive: version control
1. nerd-tree: file tree
1. vim-airline/vim-airline-themes: status bar
1. NERD comenter: handy comment tool
1. Incremental search: high light search patterns incrementally
1. gruvbox: color scheme

## Other Setup
1. Subsitute tabs with 2 spaces 
1. 80 char limits
1. Relative line number
