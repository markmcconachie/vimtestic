command! -nargs=* TestWith call vimtestic#core#TestWith('<args>')

noremap <leader>T :call vimtestic#core#SetTestFile(@%)<cr>
noremap <leader>t :call vimtestic#core#RunTestFile()<cr>
noremap <leader>r :call vimtestic#core#RunTestSuite()<cr>

