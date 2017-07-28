Plug 'elixir-lang/vim-elixir'

function! GetEelixirIndent(...)
  if a:0 && a:1 == '.'
    let v:lnum = line('.')
  elseif a:0 && a:1 =~ '^\d'
    let v:lnum = a:1
  endif
  let vcol = col('.')
  call cursor(v:lnum,1)
  let inelixir = searchpair('<%','','%>','W')
  call cursor(v:lnum,vcol)
  if inelixir && getline(v:lnum) !~ '^<%\|^\s*%>'
    let ind = 2
  else
    exe "let ind = ".b:eelixir_subtype_indentexpr
  endif
  let lnum = prevnonblank(v:lnum-1)
  let line = getline(lnum)
  let cline = getline(v:lnum)
  if cline =~# '^\s*<%\s*\%(end\|else\|elsif\|catch\|after\|rescue\)\>.*%>'
    let ind -= &sw
  elseif line =~# '\S\s*<%\s*end\s*%>'
    let ind -= &sw
  endif
  if cline =~# '^\s*%>\s*$'
    let ind -= &sw
  endif
  return ind
endfunction

