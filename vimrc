" Use Vim settings, rather then Vi settings
set nocompatible

" APPEARANCE

" Line numbering
set number

" Show incomplete cmds down the bottom
set showcmd

" Show the line and column numbers at the bottom
set ruler

" Make backspace work like other programs
"Show current mode down the bottom
set showmode

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

" BEHAVIOR

" Use jk or kj to exit insert mode
inoremap kj <Esc>
inoremap jk <Esc>

set backspace=indent,eol,start

" Reload files changed outside of vim
set autoread

" Insert blank lines above and below with Enter and Space
nnoremap <Enter> o<ESC>
nnoremap <Space> O<ESC>

" Visual tab completion for commands
set wildmenu

" Configure tab completion to ignore irrelevant files
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store

" INDENTATION

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

filetype indent on


" FILETYPE

filetype plugin on


" FOLDS

"fold based on indent
set foldmethod=indent

"deepest fold is 3 levels
set foldnestmax=3

"dont fold by default
set nofoldenable


" SEARCH

" Find the next match as we type the search
set incsearch

" Highlight searches by default
" Disabled because highlight clearing is broken: set hlsearch

" Clear highlights on escape
" Broken, starts in replace mode: nnoremap <Esc> :noh<CR><Esc>
" Broken, noh cannot be called automatically: autocmd InsertEnter * :noh<CR>

" Ignore case when searching...
set ignorecase

" ...unless a capital is typed
set smartcase


" COLORS

" Syntax highlighting
syntax on

" Set colorscheme based on the macOS dark mode if possible
if system("defaults read -g AppleInterfaceStyle") =~ '^Dark'
  colorscheme desert   " Dark mode
else
  colorscheme default  " Default/non dark mode
endif
