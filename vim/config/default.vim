set nocompatible
" Search
set ignorecase " Case insensitive search
set incsearch  " Makes search act like search in modern browsers
set hlsearch   " Highlight search results
map <F5> /\(<c-r>=expand("<cword>")<CR>\)/<CR>

" Whitespace
set listchars=tab:▸\ ,trail:· " Show tabs, trailing whitespace and end of lines
set nowrap                    " Do not wrap lines
set expandtab                 " Use spaces instead of tabs
set smarttab                  " Be smart when using tabs ;-)
set softtabstop=2             " 1 tab is 2 spaces
set shiftwidth=2
set tabstop=2
set foldmethod=indent         " Fold based on indentation.
set foldlevelstart=99         " Expand all folds by default.
set backspace=2

" Disable backup. No swap files.
" set nobackup
" set nowb
set noswapfile

" Bindings
nnoremap <Leader>/ :noh<CR><ESC>| "Clear highlights

" Window
syntax enable       " Syntax highlighting
set hidden          " Allow hiding buffers with unsaved changes
set number          " Show line numbers
set scrolloff=3     " Keep 3 context lines above and below cursor
set ruler           " Show cursor position
set spelllang=en_au " Australian English
" hi CursorLineNr ctermfg=7 " highlght current line number

" Persistent undo
set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " Where to save histories
set undolevels=1000         " How many undos
set undoreload=10000        " Number of lines to save

syntax on
" colorscheme eclipse

map <c-d> :q<CR>
