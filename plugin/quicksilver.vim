" vim-quicksilver - Setup vim/ctrl-p to use Ag
" Maintainer:   Kevin Durbin
" Version:      1.0

" if you have ag use ag for vimgrep and ctrlp
if executable('ag')
  set grepprg=ag\ --vimgrep
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

" Ag command for searching in vim
command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

" K keymap for searching word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
