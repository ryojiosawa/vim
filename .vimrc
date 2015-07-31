set nocompatible

filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'easymotion/vim-easymotion'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-unimpaired'
Plugin 'kchmck/vim-coffee-script'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'Valloric/YouCompleteMe'
Plugin 'mileszs/ack.vim'
Plugin 'wavded/vim-stylus'
Plugin 'vim-scripts/Colour-Sampler-Pack'
Plugin 'xolox/vim-easytags'

" All of your Plugins must be added before the following line
call vundle#end()


" Attempt to determine the type of a file based on its name and its contents
filetype plugin indent on

syntax on
set showcmd
set wildmenu "Turn on command line completion

set hidden " You can change buffers without saving

if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

" leader is space
let mapleader=" "

" Tab and indentation settings
set tabstop=4 " number of visual spaces per TAB
set shiftwidth=4
set softtabstop=4
set expandtab

set ruler
set history=400
set showmatch " Highlight matching [{()}]

set nowrap
set linebreak
set nolist

set autoread
set guioptions-=T

set laststatus=2
set number
set sidescroll=5

set hlsearch
set incsearch
set ignorecase
set smartcase
nnoremap <leader><esc> :nohlsearch<CR>

"colorscheme railscast2
set background=dark
set backspace=indent,eol,start  " allow backspacing over everything in insert mode

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup


" Key Bindings

"  bind <C-W>keys to <C>
map <C-j> <C-W>j<C-W>
map <C-k> <C-W>k<C-W>
map <C-h> <C-W>h<C-W>
map <C-l> <C-W>l<C-W>

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" open ag.vim
nnoremap <leader>f :Ack

" bind <space>p to open CtrlP
map <leader>p :<C-U>CtrlP<CR>

" Open/close NERDTree
map <leader>n :NERDTreeToggle<CR>

" EasyMotion key bindings
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

# ctags
set tags=./tags;/
map <leader>. <C-]>

" I like it better when the filename is used for the search. Toggle this with
let g:ctrlp_by_filename = 1
map <leader>b :CtrlPBuffer<cr>
map <leader>r :CtrlPMRUFiles<cr>
map <leader>t :CtrlPBufTag<cr>
map <leader>ta :CtrlPBufTagAll<cr>

let g:CoffeeAutoTagDisabled=0     " Disables autotaging on save (Default: 0 [false])
"let g:CoffeeAutoTagFile=       " Name of the generated tag file (Default: ./tags)
let g:CoffeeAutoTagIncludeVars=1  " Includes variables (Default: 0 [false])
let g:CoffeeAutoTagTagRelative=1  " Sets file names to the relative path from the tag file location to the tag file location (Default: 1 [true])
