" Plugins list
call plug#begin('~/.config/nvim/plugins')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'kevinhwang91/rnvimr',
Plug 'kovetskiy/sxhkd-vim'
Plug 'tpope/vim-commentary'
Plug 'ap/vim-css-color'
Plug 'liuchengxu/vim-which-key'

" Themes
Plug 'joshdick/onedark.vim'

call plug#end()

" Autoinstall missing plugins on startup

autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
