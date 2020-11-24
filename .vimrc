" => GENERAL

" Plugins
call plug#begin('~/.vim/plugged')

" For Syntax
Plug 'maxmellon/vim-jsx-pretty'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'tomasiser/vim-code-dark'
Plug 'sheerun/vim-polyglot'
Plug 'cakebaker/scss-syntax.vim'
Plug 'crusoexia/vim-monokai'

" For fuzzy finding
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Git
Plug 'tpope/vim-fugitive'

" For directories
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
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
colorscheme monokai 
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx

" Show line numbers
set number

" Text, tab, spaces, and indent related
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set lbr
set tw=500
set ai
set si
set wrap

cmap w!! %!sudo tee % 

" For zsh aliases
let &shell='/bin/zsh -i'

" Custom keybindings
" Remap jk to escape
inoremap jk <Esc>

" For ocaml
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
" ## added by OPAM user-setup for vim / base ## 93ee63e278bdfc07d1139a748ed3fff2 ## you can edit, but keep this line
let s:opam_share_dir = system("opam config var share")
let s:opam_share_dir = substitute(s:opam_share_dir, '[\r\n]*$', '', '')

let s:opam_configuration = {}

function! OpamConfOcpIndent()
  execute "set rtp^=" . s:opam_share_dir . "/ocp-indent/vim"
endfunction
let s:opam_configuration['ocp-indent'] = function('OpamConfOcpIndent')

function! OpamConfOcpIndex()
  execute "set rtp+=" . s:opam_share_dir . "/ocp-index/vim"
endfunction
let s:opam_configuration['ocp-index'] = function('OpamConfOcpIndex')

function! OpamConfMerlin()
  let l:dir = s:opam_share_dir . "/merlin/vim"
  execute "set rtp+=" . l:dir
endfunction
let s:opam_configuration['merlin'] = function('OpamConfMerlin')

let s:opam_packages = ["ocp-indent", "ocp-index", "merlin"]
let s:opam_check_cmdline = ["opam list --installed --short --safe --color=never"] + s:opam_packages
let s:opam_available_tools = split(system(join(s:opam_check_cmdline)))
for tool in s:opam_packages
  " Respect package order (merlin should be after ocp-index)
  if count(s:opam_available_tools, tool) > 0
    call s:opam_configuration[tool]()
  endif
endfor
" ## end of OPAM user-setup addition for vim / base ## keep this line
