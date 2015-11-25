"If variable is already declared then finish else continue
if exists("b:current_syntax")
    finish
endif

"Add ability to highlight keywords
syntax keyword miniTriangleKeyword begin end
syntax keyword miniTriangleKeyword let in const var
syntax keyword miniTriangleKeyword proc fun out
highlight link miniTriangleKeyword Keyword

"Add ability to highlight conditonal keywords
syntax keyword miniTriangleConditional if then elsif else
highlight link miniTriangleConditional Conditional

"Add ability to highlight repeat keywords
syntax keyword miniTriangleRepeat repeat until while do
highlight link miniTriangleRepeat Repeat

"Add ability to highlight inbuild functions
syntax keyword miniTriangleFunction skip getint putint getchr putchr 
highlight link miniTriangleFunction Function

"Add ability to highlight comments
syntax match miniTriangleComment "\v//.*$"
highlight link miniTriangleComment Comment

"Add ability to highlight operators
syntax match miniTriangleOperator "\v\*"
syntax match miniTriangleOperator "\v\-"
syntax match miniTriangleOperator "\v\+"
syntax match miniTriangleOperator "\v\+"
syntax match miniTriangleOperator "\v\\"
syntax match miniTriangleOperator "\v\>"
syntax match miniTriangleOperator "\v\<"
syntax match miniTriangleOperator "\v\^"
syntax match miniTriangleOperator "\v\!"
syntax match miniTriangleOperator "\v\="
syntax match miniTriangleOperator "\v\=\="
syntax match miniTriangleOperator "\v\:\="
syntax match miniTriangleOperator "\v\>\="
syntax match miniTriangleOperator "\v\<\="
syntax match miniTriangleOperator "\v\!\="
syntax match miniTriangleOperator "\v\&\&"
highlight link miniTriangleOperator Operator

"Add ability to highlight constants
syntax keyword miniTriangleConstant false true minint maxint
highlight link miniTriangleConstant Constant

"Add ability to highlight types
syntax keyword miniTriangleType Integer Boolean Character
highlight link miniTriangleType Type

"Add ability to highlight characters and some escape characters
syntax match miniTriangleCharacter "'[a-z]'"
syntax match miniTriangleCharacter "'[A-Z]'"
syntax match miniTriangleCharacter "\v\'\\n\'"
syntax match miniTriangleCharacter "\v\'\\t\'"
syntax match miniTriangleCharacter "\v\'\\r\'"
syntax match miniTriangleCharacter "\v\'\\\'\'"
syntax match miniTriangleCharacter "\v\'\\\"\'"
syntax match miniTriangleCharacter "\v\'\\\\'"
highlight link miniTriangleCharacter Character

"Add ability to highlight integers
syntax match miniTriangleInteger "[0-9]"
highlight link miniTriangleInteger Number

let b:current_syntax = "Mini Triangle"
