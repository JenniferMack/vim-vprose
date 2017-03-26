function! BuildVPRfilename()
    let g:bookpath = split(getcwd(), "/")[-3:]
    unlet g:bookpath[1]
    let g:sc_filename = "XX_sc-" . g:bookpath[1] . "-" . g:bookpath[0] . ".vpr"
    let g:sq_filename = "XX_sq-" . g:bookpath[1] . "-" . g:bookpath[0] . ".vpr"
endfunction

function! GetVPRcount()
    let g:cwd_files = split(system("/bin/ls -a"), "\n")
    call filter(g:cwd_files, 'v:val =~ ".*vpr$"')
    if len(g:cwd_files) == 0
        let g:sc_filename = substitute(g:sc_filename, "XX", "01", "")
        let g:sq_filename = substitute(g:sq_filename, "XX", "01", "")
    else
        let g:sc_num = g:cwd_files[-1]
        let g:sc_num = strcharpart(g:sc_num, 0, 2)
        let g:sc_num = printf("%02s", str2nr(g:sc_num)+1)
        let g:sc_filename = substitute(g:sc_filename, "XX", g:sc_num, "")
        let g:sq_filename = substitute(g:sq_filename, "XX", g:sc_num, "")
    endif
endfunction

function! OpenVPRfiles()
    call BuildVPRfilename()
    call GetVPRcount()
    execute "tabnew " . g:sq_filename
    execute append(2, g:bookpath[0])
    execute "normal 2GJG"
    execute "vsplit " . g:sc_filename
    execute append(2, g:bookpath[0])
    execute "normal 2GJG"
endfunction

command! NewScene  call OpenVPRfiles()

