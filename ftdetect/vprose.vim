autocmd BufRead,BufNewFile *.vpr,*.vent setfiletype vprose
autocmd BufNewFile *.vpr,*.vent call Pandoc_header()


function! Pandoc_header()
    call append(0, "---")
    call append("$", "project: ")
    call append("$", "setting: ")
    call append("$", "pov: ")
    call append("$", "scene:")
    call append("$", "    goal: ")
    call append("$", "    conflict: ")
    call append("$", "    disaster: ")
    call append("$", "sequel:")
    call append("$", "    one: ")
    call append("$", "    two: ")
    call append("$", "    three: ")
    call append("$", "    four: ")
    call append("$", "...")
endfunction
