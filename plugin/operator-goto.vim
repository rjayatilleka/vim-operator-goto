function! Op_goto_start(motion_wiseness)
  let start = getpos("'[")
  echomsg string(start)
  call cursor(start[1:3])
endfunction

function! Op_goto_end(motion_wiseness)
  let end = getpos("']")
  echomsg string(end)
  call cursor(end[1:3])
endfunction

call operator#user#define('gotostart', 'Op_goto_start')
call operator#user#define('gotoend', 'Op_goto_end')

map <leader>[  <Plug>(operator-gotostart)
map <leader>]  <Plug>(operator-gotoend)
