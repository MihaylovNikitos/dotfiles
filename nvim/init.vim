" Fix form xfce4-terminal
:set guicursor=

" Plugin for vim
call plug#begin('~/.local/share/nvim/plugged')

Plug 'easymotion/vim-easymotion'
Plug 'morhetz/gruvbox'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'rking/ag.vim'

Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

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

" Base config
set title
set nobackup
set noswapfile

" Improve pref vim
set ttyfast
set lazyredraw

" UI Config
set hidden
set number                   " show line number
set showcmd                  " show command in bottom bar
" set cursorline               " highlight current line
set wildmenu                 " visual autocomplete for command menu
set showmatch                " highlight matching brace
set laststatus=2             " window will always have a status line
"let &colorcolumn="140,".join(range(119,999),",")

" Show absolute numbers in insert mode, otherwise relative line numbers
set relativenumber
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

" Search / replace
set gdefault " By default add g flag to search/replace. Add g to toggle.
set hlsearch " Highlight searches
set incsearch " Highlight dynamically as pattern is typed.
set ignorecase " Ignore case of searches.
set smartcase " Ignore 'ignorecase' if search pattern contains uppercase characters.

" Hl word under the cursor
noremap <Space> *N

" Toogle hlsearch
nnoremap <F3> :set hlsearch!<CR>

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

" Windows config
set winwidth=79
set winheight=5
set winminheight=5

" Always focus on splited window
nnoremap <C-w>s <C-w>s<C-w>w
nnoremap <C-w>v <C-w>v<C-w>w

" Easily resize split windows
nnoremap <C-j> <C-w>1+
nnoremap <C-k> <C-w>1-
nnoremap <C-h> <C-w>5<
nnoremap <C-l> <C-w>5>

" NERDtree
let g:NERDTreeWinPos = "right"
map <silent> <C-n> :NERDTreeFocus<CR>

" Highligthing files
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1

" Close vim if open only NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

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

" Autosave only when there is something to save
function! SaveIfUnsaved()
    if &modified
        :silent! w
    endif
endfunction
au FocusLost,BufLeave * :call SaveIfUnsaved()
" Read the file on focus/buffer enter
au FocusGained,BufEnter * :silent! !

" Config Magit
let g:magit_commit_title_limit=140
nnoremap <C-m> :Magit<CR>

" Config GitGutter
let g:gitgutter_eager = 1
let g:gitgutter_realtime = 1
autocmd InsertLeave * :GitGutter

" Edit/reload vimrc
nmap <leader>ev :e $MYVIMRC<CR>
nmap <leader>rv :so $MYVIMRC<CR>

" Reset vim
map <F5> :so $MYVIMRC \| :redraw! \| :noh \| :GitGutterAll<CR>
