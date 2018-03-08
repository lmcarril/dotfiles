set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Utility
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
"Plugin 'ervandew/supertab'
"Plugin 'BufOnly.vim'
"Plugin 'wesQ3/vim-windowswap'
"Plugin 'SirVer/ultisnips'
"Plugin 'junegunn/fzf.vim'
"Plugin 'junegunn/fzf'
"Plugin 'godlygeek/tabular'
Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'benmills/vimux'
"Plugin 'jeetsukumaran/vim-buffergator'
"Plugin 'gilsondev/searchtasks.vim'
"Plugin 'Shougo/neocomplete.vim'
"Plugin 'tpope/vim-dispatch'

" Generic Programming Support 
Plugin 'jakedouglas/exuberant-ctags'
"Plugin 'honza/vim-snippets'
Plugin 'Townk/vim-autoclose'
Plugin 'tomtom/tcomment_vim'
"Plugin 'tobyS/vmustache'
"Plugin 'janko-m/vim-test'
"Plugin 'maksimr/vim-jsbeautify'
"Plugin 'vim-syntastic/syntastic'
"Plugin 'neomake/neomake'
Plugin 'Valloric/YouCompleteMe'

" Git 
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" disable vi compatibility (emulation of old bugs)
set nocompatible

" use indentation of previous line
set autoindent

" use intelligent indentation for C
set smartindent

" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces

" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120

" turn syntax highlighting on
syntax enable
set background=dark
colorscheme solarized

" turn line numbers on
set number
set ruler

" Always display the status line
set laststatus=2

" No ARRRROWWS!!!!
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Enable highlighting of the current line
set cursorline

" highlight matching braces
set showmatch

" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

" search tags from current directory upwards
" set tags=./tags,tags;$HOME

" open NERDTree automatically when vim starts up
" autocmd vimenter * NERDTree

" open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" NERDTree shortcut"
map <C-n> :NERDTreeToggle<CR>

" Tagbar shorcut
map <C-m> :TagbarToggle<CR>

" Easier window navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" enter newline without edit mode with Enter
nmap <CR> o<Esc>

" ctr + i gos into insert mode for a single character and goes back to normal mode
nnoremap <C-i> i_<Esc>r

" Change the default mapping and the default command to invoke CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
