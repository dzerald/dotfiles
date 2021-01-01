" Nerdtree config

" Close vim when nerdtree is only thing left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <C-n>  :NERDTreeToggle<CR>
