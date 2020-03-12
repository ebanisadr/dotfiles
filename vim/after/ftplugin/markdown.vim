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
