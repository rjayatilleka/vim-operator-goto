function! s:Op_goto_start(motion_wiseness)
  let start = getpos("'[")
  call cursor(start[1:3])

  if a:motion_wiseness == 'line'
    normal ^
  end
endfunction

function! s:Op_goto_end(motion_wiseness)
  let end = getpos("']")
  call cursor(end[1:3])

  if a:motion_wiseness == 'line'
    normal $
  end
endfunction

call operator#user#define('gotostart', "<SID>Op_goto_start")
call operator#user#define('gotoend', "<SID>Op_goto_end")

map { <Plug>(operator-gotostart)
map } <Plug>(operator-gotoend)
