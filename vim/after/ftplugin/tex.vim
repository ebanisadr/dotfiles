" fold manually
set foldmethod=manual

" keep folds on reopen
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END

" enable spellcheck
set spell

" wrap lines at 80 characters
set textwidth=80

