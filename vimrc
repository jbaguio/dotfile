" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" Load plugins here (pathogen)
call pathogen#infect()

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" Turn on auto indention and make it smart! :)
set autoindent
set smartindent

" Set scrolloff to 8 so that we always have at least 8 lines between cursor and
" end of screen in VIM while editing
set scrolloff=8

" Add a bit extra margin to the left
" set foldcolumn=1

" Turn backup off, since most stuff is in SVN, git, etc.. anyway... set
" nobackup
set nowb
set noswapfile

" Set spelling language, but don't enable it by default cause it's annoying
set nospell spelllang=en_us

" Let's hide the mode as we are using lighline for this :)
set noshowmode

" This is to fix lightline
set laststatus=2

" TODO: Pick a leader key
" let mapleader = ","

" Security
set modelines=0

" Show line numbers
set number
set relativenumber

" Show file strats
set ruler

" Show the cursor's current line highlight
set cursorline

" Blink cursor on error instead of beeping (grr)
set visualbell

" Disable mouse cause only noobs use it
set mouse=

" Lets configure the completeopt settings to make the menu work better/faster
set completeopt=longest,menuone

" Disable arrow keys and use UP and DOWN for code movement
no <down> mz:m+<CR>`z
no <left> <Nop>
no <right> <Nop>
no <up> mz:m-2<CR>`z
ino <down> <Esc><Esc>mz:m+<CR>`z
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Esc><Esc>mz:m-2<CR>`z
vno <down> :m'>+<CR>`<my`>mzgv`yo`z
vno <left> <Nop>
vno <right> <Nop>
vno <up> :m'<-2<CR>`>my`<mzgv`yo`z

" Turn off Ex-Mode permanently
no Q <nop>

" Encoding
set encoding=utf-8

" Whitespace
set nowrap
" set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd
set cmdheight=1

" Turn on the wildmenu cause we love being wild
set wildmenu
set wildmode=full

" Searching
" nnoremap / /\v
" vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" ack.vim
let g:ackprg = 'ag --norgroup --nocolor --column'

" NERDTree with Ctrl+n to toggle
map <C-n> :NERDTreeToggle<CR>
" close if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default
" Set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Color scheme (terminal)
set t_Co=256
let g:solarized_termcolors=256
let g:solarized_termtrans=1
" put
" https://raw.github.com/altercation/vim-colors-solarized/master/solarized.vim
" in ~/.vim/colors/ and uncomment:
syntax enable
set background=dark
colorscheme solarized

" set rtp+=~/.fzf
