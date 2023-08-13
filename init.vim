set nocompatible
set showmatch
set ignorecase
set mouse=v
set hlsearch
set tabstop=4
"set softtabstop=4"
set expandtab
set shiftwidth=4
set autoindent
set number
:
set wildmode=longest,list
:filetype plugin indent on
:syntax on
:set mouse=a
:set clipboard=unnamedplus
:filetype plugin on
":set cursorline
:set ttyfast

call plug#begin()
 Plug 'dracula/vim'
 Plug 'ryanoasis/vim-devicons'
 Plug 'SirVer/ultisnips'
 Plug 'honza/vim-snippets'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'mhinz/vim-startify'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}

au VimEnter *  NERDTree
au VimEnter * wincmd w
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-w> <C-w>w
call plug#end()

:colorscheme dracula
