command! -nargs=* TestWith call vimtestic#core#TestWith('<args>')
command! -nargs=* TestTarget call vimtestic#core#TestTarget('<args>')

noremap <leader>T :call vimtestic#core#TestTarget(@%)<cr>
noremap <leader>t :call vimtestic#core#RunTestFile()<cr>
noremap <leader>r :call vimtestic#core#RunTestSuite()<cr>

