syntax on

" Disable compatibility with vi
set nocompatible

" Set Line Number
set number

" Enable vim to detect filetype
filetype on

" Enable plugins and will load by detecting file type
filetype plugin on

" Enable Indentation by default
filetype indent on

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Set show/no show mode
set noshowmode
" set showmode

" Instant Highlight while you search through a file.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Will show similar results to your search.
set showmatch

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Set Auto Indentation on
set smartindent

" I hate swape files Let's say goodbye to them
set noswapfile
set nobackup

" Set undo instead of swap and backup
set undodir=~/.vim/undodir
set undofile

" Enable mouse inside vim
set mouse=a

" =======================< Plugins >=======================================
call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-commentary'
Plug 'ryanoasis/vim-devicons'

call plug#end()

" ========================< Wild Menu >====================================
set wildmenu " for autocompletion
set wildmode=list:longest " Make wildmenu behave like BC
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx 

" MAPPINGS --------------------------------------------------------------- {{{

inoremap jk <esc>
nnoremap <space> :
nnoremap c :call C_Compile()<CR>:redraw<CR>:call C_HlMessage()<CR>
nnoremap e :call C_Run()<CR>

" Mappings for the NERD Tree Commands
nnoremap <C-a> :NERDTreeFocus<CR>
nnoremap <C-z> :NERDTree<CR>
nnoremap <C-x> :NERDTreeToggle<CR>

" }}}

" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" If Vim version is equal to or greater than 7.3 enable undofile.
" This allows you to undo changes to a file even after saving it.
if version >= 703
    set undodir=~/.vim/backup
    set undofile
    set undoreload=10000
endif

" If the current file type is HTML, set indentation to 2 spaces.
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab

" You can split a window into sections by typing `:split` or `:vsplit`.
" Display cursorline and cursorcolumn ONLY in active window.
augroup cursor_off
    autocmd!
    autocmd WinLeave * set nocursorline nocursorcolumn
    autocmd WinEnter * set cursorline cursorcolumn
augroup END

" }}}

"STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=%{strlen(&fenc)?&fenc:&enc}
set statusline+=\ row:\ %l\ col:\ %c\ \ line:\ %l\/%L
" Show the status on the second to last line.
set laststatus=2

"}}} 
"

