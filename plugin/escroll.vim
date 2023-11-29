" escroll.vim - fix <C-e> in vscode

" don't load twice
if exists("g:loaded_escroll") || &cp || v:version < 700
  finish
endif
let g:loaded_escroll = 1

function! EScroll()
  call feedkeys("1\<C-d>")
  let l:row = winline()
  if l:row == 2
    normal j
  else
    normal k
  endif
endfunction

