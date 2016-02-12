if exists("b:did_indent")
      finish
endif

let b:did_indent = 1

"Sets minitriangle indenting function
setlocal indentexpr=GetMiniTriangleIndent()

"Only define the function once.
if exists("*GetMiniTriangleIndent")
    finish
endif

"The file to indent minitriangle code
function! GetMiniTriangleIndent()
    let line = getline(v:lnum)
    let previousNum = prevnonblank(v:lnum - 1)
    let previous = getline(previousNum)
    if previous =~ "begin"
        return indent(previousNum) + &shiftwidth
    elseif previous =~ "then" || previous =~ "repeat" || previous =~ "else" || previous =~ "let"
        return indent(previousNum) + &shiftwidth
    elseif previous =~ "end"
        return indent(previousNum) - &shiftwidth
    elseif previous =~ ""
        return 0
    else
        return indent(previousNum)
    endif
endfunction
