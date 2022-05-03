"Vundle begins here, turn off filetype temporarily
filetype off
set nocompatible
"Add vundle and any other packages not installed through vundle to our lookup
"pat
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'nanotech/jellybeans.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'scrooloose/nerdtree'
Plugin 'thoughtbot/vim-rspec'
Plugin 'jremmen/vim-ripgrep'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-fireplace'
Plugin 'rodjek/vim-puppet'
Plugin 'fatih/vim-go'
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

" avoid maxmempattern error
set mmp=5000

colorscheme jellybeans
set t_Co=256

inoremap jk <Esc>
nnoremap th :tabprev<CR>
nnoremap tl :tabnext<CR>
" window navigation
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Rspec.vim config
let g:rspec_command = "!bundle exec rspec {spec}"

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim

if executable('rg')
    set grepprg=rg\ --color=never
    let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
    let g:ctrlp_use_caching = 0
endif

set wildignore+=*/.git/*,*/tmp/*,*.swp,*/.bundle/*

command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
