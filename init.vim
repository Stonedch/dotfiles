call plug#begin('~/.vim/plugged')
"Common
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Themes
Plug 'ryanoasis/vim-devicons'
Plug 'altercation/vim-colors-solarized'
Plug 'lifepillar/vim-solarized8'
"Markdown
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
call plug#end()

" Settings
set autoread
syntax enable
set t_Co=256

colorscheme solarized
set background=dark

set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete:h14

set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set number

set nocursorline
set nocursorcolumn
syntax sync minlines=256

set wildmenu
set hidden
set cmdheight=1

set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

set nocompatible

set backspace=indent,eol,start

let g:mapleader = ','

set noerrorbells
set novisualbell
set noswapfile
set nobackup
set splitright
set splitbelow
set fileformats=unix,dos,mac

set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch

"Airline options
let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='solarized'

"Open NERDTree with Ctrl-n
map <C-n> :NERDTreeToggle<CR>
"set timeout
set timeoutlen=1000
"set ttimeout
set ttimeoutlen=50
