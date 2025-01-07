" External plug: Install by :source % && :PlugInstall; Uninstall by :PlugClean
call plug#begin('~/.vim/plugged')
"Plug 'neoclide/coc.nvim'
Plug 'ycm-core/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'chiel92/vim-autoformat'
Plug 'ntk148v/komau.vim'
Plug 'nordtheme/vim'
call plug#end()

" Themes setting
set t_Co=256
colorscheme komau
set background=dark ""? dark : light"
let g:komau_italic=0
let g:komau_bold=0

" colorscheme nord

"Basic settings
"set nocompatible: use vim cmd rather than vi
syntax on
filetype indent on
set mouse=a

" Indentation settings
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
"set expandtab
"set softtabstop=4

" Auto format file when saving (:w), relied on vim-autoformat plugin"
autocmd BufWritePre * :Autoformat

"augroup format_code
"       autocmd!
"       " C/C++: clang-format
"       autocmd BufWritePre *.cpp,*.h,*.cc :silent! !clang-format -i %
"       " Python: autopep8
"       autocmd BufWritePre *.py :silent! !autopep8 --in-place %
"       " JavaScript: prettier
"       autocmd BufWritePre *.js :silent! !prettier --write %
"augroup END

" Display settings
set number "display lines"
set textwidth=80 "set text width of each line"
set wrap
set linebreak "wraps text at the end of word without split it"

" Searching Settings
set hlsearch "highlight search results"
set showmatch "highlight matched ([{ pairs"
set incsearch "jump to the first matched"
"set ignorecase \"ignore case when search"

" Edit settings
"set spell spelllang=en_us: check spelling
set history=100 "history operation numbers remember"
set autoread "warning when the file is changed by external operation"
set wildmenu wildmode=longest:list,full "auto complete cmd (press Tab)"

" Key settings
inoremap jk <ESC>
