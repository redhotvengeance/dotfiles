" Move to the window in the direction shown, or create a new window
" Source: https://github.com/nicknisi/vim-workshop/blob/master/vimrc
function! WinMove(key)
  let t:curwin = winnr()
  exec "wincmd ".a:key
  if (t:curwin == winnr())
    if (match(a:key,'[jk]'))
      wincmd v
    else
      wincmd s
    endif
    exec "wincmd ".a:key
  endif
endfunction
