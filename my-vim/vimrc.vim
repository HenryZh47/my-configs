set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" vim git
Plugin 'tpope/vim-fugitive'

" Nerd tree
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" vim-airline status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme='luna'

" youcompleteme autocomplete
Plugin 'valloric/youcompleteme'

" NERD commenter
Plugin 'scrooloose/nerdcommenter'
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" incremental search
Plugin 'haya14busa/incsearch.vim'
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Set tab as four spaces
filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab
" Set 80 character line
set colorcolumn=81
hi ColorColumn ctermbg=DarkBlue
" filetype plugin on for commenter
filetype plugin on
" relatvie line number
set nu rnu
