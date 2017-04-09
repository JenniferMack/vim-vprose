autocmd BufRead,BufNewFile *.vpr,*.vent setfiletype vprose
autocmd BufRead,BufNewFile *.vpr,*.vent set syntax=markdown
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
    call append(9,  "- emotion: ")
    call append(10, "  thought: ")
    call append(11, "  - review: ")
    call append(12, "  - analysis: ")
    call append(13, "  - planning: ")
    call append(14, "- decision: ")
    call append(15, "- action: ")
    call append(16, "...")
    call append(17, "")
endfunction
