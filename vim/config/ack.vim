if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
map <F4> :Ack! <cword><CR>
map <F8> :Ack!<space>
