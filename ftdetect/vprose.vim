autocmd BufRead,BufNewFile *.vpr,*.vent setfiletype vprose
autocmd BufNewFile *.vpr,*.vent call Pandoc_header()


function! Pandoc_header()
    call append(0,  "---")
    call append(1,  "project: ")
    call append(2,  "setting: ")
    call append(3,  "pov: ")
    call append(4,  "scene:")
    call append(5,  "- goal: ")
    call append(6,  "- conflict: ")
    call append(7,  "- disaster: ")
    call append(8,  "sequel:")
    call append(9,  "- one: ")
    call append(10, "- two: ")
    call append(11, "- three: ")
    call append(12, "- four: ")
    call append(13, "...")
    call append(14, "")
endfunction
