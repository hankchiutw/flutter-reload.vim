" ============================================================================
" File:        reload.vim
" Description: reload flutter when saving a dart file
" Author:      Hank Chiu  <hankchiu.tw@gmail.com>
" Version:     0.1.0
" License:     This program is free software. It comes without any warranty,
"              to the extent permitted by applicable law. You can redistribute
"              it and/or modify it under the terms of the Do What The Fuck You
"              Want To Public License, Version 2, as published by Sam Hocevar.
"              See http://sam.zoy.org/wtfpl/COPYING for more details.
"
" ============================================================================
function! reload#TriggerHotReload() abort
	silent execute '!kill -SIGUSR1 "$(pgrep -f flutter_tools.snapshot\ run)" &> /dev/null'
endfunction
