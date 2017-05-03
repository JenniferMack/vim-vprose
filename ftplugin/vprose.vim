" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
    finish
endif
let b:did_ftplugin = 1

function! Eatchar(pattern)
    let c = nr2char(getchar(0))
    return (c =~ a:pattern) ? '' : c
endfunc

setlocal textwidth=55
setlocal colorcolumn=-3
setlocal breakat-=*
setlocal linebreak

inoremap <buffer> . .<CR>
inoremap <buffer> , ,<CR>
inoremap <buffer> ; ;<CR>

"iab <buffer> for for<CR><C-R>=Eatchar('\s')<CR>
"iab <buffer> and and<CR><C-R>=Eatchar('\s')<CR>
"iab <buffer> nor nor<CR><C-R>=Eatchar('\s')<CR>
"iab <buffer> but but<CR><C-R>=Eatchar('\s')<CR>
"iab <buffer> or or<CR><C-R>=Eatchar('\s')<CR>
"iab <buffer> yet yet<CR><C-R>=Eatchar('\s')<CR>
"iab <buffer> so so<CR><C-R>=Eatchar('\s')<CR>

