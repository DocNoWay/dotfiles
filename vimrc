" enable VIM features first
set nocompatible

" Idention
set autoindent
set filetype=indent
set shiftround
set shiftwidth=4
set smarttab
set tabstop=4

" Search options
set hlsearch
set ignorecase
set incsearch
set smartcase

" Text rendering 
set display+=lastline
"set encoding=utf-8
set linebreak
set scrolloff=2
set sidescrolloff=5
syntax enable
set wrap
set list listchars=tab:>-,trail:·

" User Interface
set hidden
set laststatus=2
set ruler
set wildmenu
set number
set relativenumber
set noerrorbells
set visualbell
set mouse=a
set title
set background=dark
nnoremap <Space> <Nop>
let mapleader = "\<Space>"

" Code Folding 
set foldmethod=indent
set foldnestmax=3
set nofoldenable

" Miscellaneous 
set autoread
" Backups
if !isdirectory($HOME . '/.vim/backups')
	call mkdir($HOME . '/.vim/backups', 'p')
endif
set backupdir=$HOME/.vim/backups
set backup
if !isdirectory($HOME . '/.vim/swaps')
	call mkdir($HOME . '/.vim/swaps', 'p')
endif
set dir=$HOME/.vim/swaps
set confirm
" Plugins
call plug#begin()
Plug'dracula/vim',{'as':'dracula'}
Plug'vim-airline/vim-airline'
Plug'vim-airline/vim-airline-themes'
Plug'preservim/nerdtree'
call plug#end()

"let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions = []
"let g:airline_powerline_fonts = 1

colorscheme dracula

" Nerdtree shortcuts
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

nmap <leader>Q :bufdo bdelete<cr>

map gf :edit <cfile><cr>
nmap <silent> <C-h> <C-w>h
nmap <silent> <C-j> <C-w>j
nmap <silent> <C-k> <C-w>k
nmap <silent> <C-l> <C-w>l

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
