{}: ''
" == junegunn/fzf ==
nnoremap <C-T> :FZF<CR>
inoremap <C-T> <ESC>:FZF<CR>i

" == scrooloose/nerdtree ==
nnoremap <C-\> :NERDTreeToggle<CR>
inoremap <C-\> <ESC>:NERDTreeToggle<CR>
nnoremap <C-P> :NERDTreeFind<CR>
inoremap <C-P> <ESC>:NERDTreeFind<CR>

" == split pane config
nnoremap <C-A> :vsp<CR>

" == remap code complete
inoremap <C-Space> <C-N>

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
''
