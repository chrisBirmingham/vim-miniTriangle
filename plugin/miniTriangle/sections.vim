" adapted from http://vim.wikia.com/wiki/Easily_switch_between_source_and_header_file#Single_line_solution
nnoremap <F4> :e %:p:s,.mt$,.X123X,:s,.tam$,.mt,:s,.X123X$,.tam,<CR>
