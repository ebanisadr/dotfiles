setlocal spell
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal tabstop=4

" Wrap lines at word breaks
set wrap linebreak " nolist not needed after vim patch 7.4.353

" Wrap lines at 80 characters
set textwidth=80

" Move up and down by visual line (for wrapped lines)
nnoremap j gj
nnoremap k gk

" vim-markdown settings
let g:vim_markdown_math = 1
let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_new_list_item_indent = 2

