Plug 'airblade/vim-gitgutter'

let g:gitgutter_realtime = 0
let g:gitgutter_eager = 1
let g:gitgutter_map_keys = 0
set signcolumn=yes

nmap ]d <Plug>GitGutterNextHunk
nmap [d <Plug>GitGutterPrevHunk
