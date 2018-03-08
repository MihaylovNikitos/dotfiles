:set guicursor=

call plug#begin('~/.local/share/nvim/plugged')

Plug 'easymotion/vim-easymotion'
Plug 'mhartington/oceanic-next'

call plug#end()

" Colors {{{
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
syntax enable                " enable syntax processing
colorscheme OceanicNext
"set background=dark
" }}} Colors

" UI Config {{{
set hidden
set number                   " show line number
set showcmd                  " show command in bottom bar
" set cursorline               " highlight current line
set wildmenu                 " visual autocomplete for command menu
set showmatch                " highlight matching brace
set laststatus=2             " window will always have a status line
set nobackup
set noswapfile
"let &colorcolumn="140,".join(range(119,999),",")
" }}} UI Config


" Leader & Mappings {{{
let g:mapleader = ","

" edit/reload vimrc
nmap <leader>ev :e $MYVIMRC<CR>
nmap <leader>sv :so $MYVIMRC<CR>
"
" }}} 
