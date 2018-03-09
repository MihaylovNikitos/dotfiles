" Fix form xfce4-terminal
:set guicursor=

" Plugin for vim
call plug#begin('~/.local/share/nvim/plugged')

Plug 'easymotion/vim-easymotion'
Plug 'morhetz/gruvbox'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }

Plug 'airblade/vim-gitgutter'
Plug 'jreybert/vimagit'

call plug#end()

" Colors
let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
syntax enable

" Set colorscheme
set background=dark
let g:gruvbox_contrast_dark = 'soft'
colorscheme gruvbox

" UI Config
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

" Leader & Mappings
let g:mapleader = ","

" Moving between long wrap line
nnoremap j gj
nnoremap k gk

" Soft scroll
set scrolloff=8
set sidescroll=1
set sidescrolloff=15

" Autocenter on matched
noremap n nzz
noremap N Nzz

" NERDtree
let g:NERDTreeWinPos = "right"
map <silent> <C-n> :NERDTreeFocus<CR>

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" Save file by Ctrl-s
nnoremap <C-s> :w<CR>
inoremap <C-s> <ESC>:w<CR>

" Open Magnit
nnoremap <C-m> :Magit<CR>

" edit/reload vimrc
nmap <leader>ev :e $MYVIMRC<CR>
nmap <leader>rv :so $MYVIMRC<CR>

