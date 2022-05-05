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
"Plug'dracula/vim',{'as':'dracula'}
Plug'vim-airline/vim-airline'
Plug'vim-airline/vim-airline-themes'
Plug'preservim/nerdtree'
call plug#end()

"colorscheme dracula
colorscheme elflord

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

"" Set status line display
"set laststatus=2
"set statusline=[%n]\ %<%F\ \ \ [%M%R%H%W%Y][%{&ff}]\ \ %=\ line:%l/%L\ col:%c\ \ \ %p%%\ \ \ @%{strftime(\"%H:%M:%S\")}
"hi StatusLine ctermfg=NONE ctermbg=red cterm=NONE
"hi StatusLineNC ctermfg=black ctermbg=red cterm=NONE
"hi User1 ctermfg=black ctermbg=magenta
"hi User2 ctermfg=NONE ctermbg=NONE
"hi User3 ctermfg=black ctermbg=blue
"hi User4 ctermfg=black ctermbg=cyan
"set statusline=\                    " Padding
"set statusline+=%f                  " Path to the file
"set statusline+=\ %1*\              " Padding & switch colour
"set statusline+=%y                  " File type
"set statusline+=\ %2*\              " Padding & switch colour
"set statusline+=%=                  " Switch to right-side
"set statusline+=\ %3*\              " Padding & switch colour
"set statusline+=line                " of Text
"set statusline+=\                   " Padding
"set statusline+=%l                  " Current line
"set statusline+=\ %4*\              " Padding & switch colour
"set statusline+=of                  " of Text
"set statusline+=\                   " Padding
"set statusline+=%L                  " Total line
"set statusline+=\ %3*
"set statusline+=col:
"set statusline+=%c 				" Position in line
