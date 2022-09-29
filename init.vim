:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
let g:loaded_matchparen=1

" uses vim-plug for plugins, is on aur.
call plug#begin()

Plug 'https://github.com/preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Stoozy/vimcord'

call plug#end()

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
nmap <F2> :NERDTreeToggle<CR>
