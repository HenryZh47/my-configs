set nocompatible              " be iMproved, required
set mouse=a
filetype off                  " required
set expandtab

" VimPlug plugins
call plug#begin('~/.vim/plugged')

" vim ispc (ispc syntax highlighting)
Plug 'jez/vim-ispc'

" clang format
Plug 'rhysd/vim-clang-format'
let g:clang_format#auto_format = 1
let g:clang_format#code_style = 'google'
nmap ft :ClangFormatAutoToggle<CR>

" easy align
Plug 'junegunn/vim-easy-align'

" git fugitive
Plug 'tpope/vim-fugitive'
nmap <leader>gs :G<CR>
nmap <leader>gk :diffget //3<CR>
nmap <leader>gj :diffget //2<CR>

" nerdtree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='gruvbox'

" NERD commenter
Plug 'scrooloose/nerdcommenter'
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" incremental search
Plug 'haya14busa/incsearch.vim'
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" coc (Conquer of Completion)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Color scheme
Plug 'morhetz/gruvbox'

" ranger
Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'
let g:ranger_map_keys = 0     " disable default key mapping
nmap fr :Ranger<CR>

" goyo
Plug 'junegunn/goyo.vim'

" fzf (fuzzy finding)
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
nmap ff :Files!<CR>
nmap fl :BLines!<CR>

" Initialize plugin system
call plug#end()

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')
" coc prettier enable
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

" random shit
set hidden 
set updatetime=300
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" Set tab as four spaces
filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab
" Set 80 character line
set colorcolumn=81
" filetype plugin on for commenter
filetype plugin on
" relatvie line number
set nu rnu
" color scheme
colorscheme gruvbox
set bg=dark
" esc clear search highlight
nnoremap <esc> :noh<return><esc>
" create tabs
nnoremap tn :tabnew<CR>
nnoremap tw :tabclose<CR>
nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>
nnoremap cf :ClangFormatAutoToggle<CR>
