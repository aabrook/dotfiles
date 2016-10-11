Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

set rtp+=/usr/local/opt/fzf
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

