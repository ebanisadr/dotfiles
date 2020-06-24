" Use Vim settings, rather then Vi settings
set nocompatible

" APPEARANCE

" Line numbering
set number

" Show incomplete cmds down the bottom
set showcmd

" Show the line and column numbers at the bottom
set ruler

" Show a line under the cursor
set cursorline

"Show current mode down the bottom
set showmode

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

" BEHAVIOR

" Use jk or kj to exit insert mode
inoremap kj <Esc>
inoremap jk <Esc>

" Make backspace work like other programs
set backspace=indent,eol,start

" Reload files changed outside of vim
set autoread

" Enable persistent undo
set undofile
set undodir=~/.vim/undofiles

" Manually set spellfile to ensure its updated
set spellfile=~/.vim/spell/words.utf-8.add

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

" Javascript templates
" Tag on the left, filetype on the right
let g:taggedtemplate#tagSyntaxMap = {
  \ "md": "markdown",
  \ "gql": "graphql",
  \ "css": "css" }

autocmd FileType javascript,typescript : call taggedtemplate#applySyntaxMap()

" Vertical line at col 81
set colorcolumn=81


" Solarized colorscheme
set background=dark
colorscheme solarized

" Insert date with \now or \today
nnoremap <leader>now "=strftime("%Y-%m-%d %H:%M")<CR>p
nnoremap <leader>today "=strftime("%B %d, %Y")<CR>p

