"Vundle begins here, turn off filetype temporarily
filetype off
set nocompatible
"Add vundle and any other packages not installed through vundle to our lookup
"path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'nanotech/jellybeans.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'scrooloose/nerdtree'
"End Vundle
call vundle#end()
" "Vundle ended so reenable filetypes
filetype plugin indent on

" configure airline
let g:airline_powerline_fonts = 0
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" 2 spaces soft tabs for indentation
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

nmap <silent> <C-N> :NERDTreeToggle<CR>

" always display the status line
set laststatus=2

set number
syntax enable

colorscheme jellybeans

inoremap jk <Esc>
nnoremap th :tabprev<CR>
nnoremap tl :tabnext<CR>
" window navigation
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_cmd = 'CtrlPMRU'
