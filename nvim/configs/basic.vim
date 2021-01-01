" Leaderkey

let g:mapleader = "\<Space>"
let g:maplocalleader = ','

" Quicksave
nmap <leader>w :w!<cr>

" Basic settings
set autoindent
set background=dark
set clipboard=unnamedplus
set conceallevel=0
set cmdheight=2
" set cursorline
set encoding=utf-8
set expandtab
set fileencoding=utf-8
set hidden
set ignorecase
set iskeyword+=-
set laststatus=2
set mouse=a
set noshowmode
set notimeout
set number
set pumheight=10
set ruler
set shiftwidth=2
set showtabline=2
set smartindent
set smarttab
set splitbelow
set splitright
set tabstop=2
set t_Co=256
set timeoutlen=500
set updatetime=300

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " Disable comments on newline

syntax enable

au! BufWritePost $MYVIMRC source %
cmap w!! w !sudo tee %

" Keybinds

" Split view
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
