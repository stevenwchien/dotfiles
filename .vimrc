" => GENERAL

" Plugins
call plug#begin('~/.vim/plugged')

" For Syntax
Plug 'maxmellon/vim-jsx-pretty'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'tomasiser/vim-code-dark'

" For fuzzy finding
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Git
Plug 'tpope/vim-fugitive'

" Initialize plugin system
call plug#end()

" Set history line limit
set history=500

" Always show the current position
set ruler

" Ignore case when searching
set ignorecase

" Highlight search results
set hlsearch

" Incremental Search
set incsearch

" Enable syntax highlighting
syntax enable
colorscheme codedark

" Show line numbers
set number

" Text, tab, spaces, and indent related
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set lbr
set tw=500
set ai
set si
set wrap

cmap w!! %!sudo tee % 

" For JSX and TSX
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx

