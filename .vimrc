set nocompatible

filetype off " required Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmaric/Vundle.vim'
Plugin 'tpope/vim-fugitive.git'
Plugin 'https://github.com/vim-scripts/ScrollColors'
Plugin 'tpope/vim-rails'
Plugin 'slim-template/vim-slim.git'
Plugin 'thoughtbot/vim-rspec'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-unimpaired.git'
Plugin 'tpope/vim-surround.git'
call vundle#end()
execute pathogen#infect()

syntax enable
set encoding=utf-8
set showcmd		" display incomplete commands
set guioptions=aet
set guifont=Monospace\ 16
set autowrite

" allow backspacing over everything in insert mode
set nowrap
set tabstop=2 shiftwidth=2
set expandtab
set backspace=indent,eol,start
set nobackup
set nowritebackup
set noswapfile

set incsearch

set exrc

set splitright
set splitbelow

set ignorecase
set smartcase

:let mapleader = ','

"Enable copying to clipboard using `CTRL + c`
"map <C-c> y:e ~/clipsongzboard<CR>P:w !pbcopy<CR><CR>:bdelete!<CR>

noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
"noremap h <NOP>
"noremap j <NOP>
"noremap k <NOP>
"noremap l <NOP>

nmap <silent> <leader><leader> :NERDTreeToggle<CR>

iabbrev pry binding.pry
iabbrev saop save_and_open_page

" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>


"==== theme
colorscheme molokai

"molokai
let g:rehash256 = 1
let g:molokai_original = 1

"plugin ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim

"plugin vim-airline
"let g:airline_powerline_fonts = 1
set t_Co=256
set laststatus=2
set ttimeoutlen=50

"===
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  " unicode symbols
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.linenr = '␊'
  let g:airline_symbols.linenr = '␤'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
"===

"plugin vim-rails
command -bar -nargs=1 OpenURL :!chromium-browser <args>

"==
"for rails
autocmd FocusLost * :wa

"Plugin CtrlP
"Set no max file limit
"let g:ctrlp_max_files = 0

" Ignore these directories
"set wildignore+=*/log/**
"set wildignore+=*/tmp/**
set autoread

"for Rspec
let g:rspec_command = "!rspec --color {spec}"

