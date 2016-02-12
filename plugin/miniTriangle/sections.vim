"Function to switch between tam and mt files. Gets file name and tries to find a
"tam file with the same name and vice versa
function! SwitchBetweenFiles()                                       
    if expand ("%:e") == "mt"
        find %:t:r.tam
    else
        find %:t:r.mt
    endif
endfunction

"Mappign to call the functions
nmap <F4> :call SwitchBetweenFiles()<CR>
