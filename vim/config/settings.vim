set encoding=utf-8

syntax enable
colorscheme default

set backspace=indent,eol,start
set fillchars=vert:\
set laststatus=2
set listchars=nbsp:·,tab:▸\ ,trail:·
set list
set modeline
set modelines=4
set nojoinspaces
set number
set scrolloff=1
set showcmd
set visualbell
set wildmode=longest,list
set wrap

set expandtab
set shiftwidth=4
set softtabstop=4

set gdefault
set hlsearch
set hlsearch
set incsearch
set ignorecase smartcase

set iskeyword+=-

set history=10000

set backupdir=~/.vim/backup
set directory=~/.vim/backup

set autoread

set updatetime=2000
au WinEnter,BufWinEnter,CursorHold * silent! checktime

set autowrite

au BufLeave,FocusLost * silent! wa

set exrc
set secure
