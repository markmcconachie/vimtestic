function! SetTestFile()
  let t:mcm_test_file=@%
  echom "Test file set to ". @%
endfunction

function! RunTestFile()
    if !exists("t:mcm_test_file")
      echoer "[Vimtestic] No Testfile set"
    else
      exec 'call vimtestic#' . t:mcm_test_runner . '#RunTestFile' . '("' . t:mcm_test_file '")'
    end
endfunction

function! RunTestSuite()
  exec 'call vimtestic#' . t:mcm_test_runner . '#RunTestSuite()'
endfunction

function! TestWith(tool)
  let t:mcm_test_runner = a:tool
endfunction
command! -nargs=* TestWith call TestWith('<args>')

""""""""""""""""""""
"  Default  mappings
""""""""""""""""""""
noremap <leader>T :call SetTestFile()<cr>
noremap <leader>t :call RunTestFile()<cr>
noremap <leader>r :call RunTestSuite()<cr>

" Default to Rspec
silent call TestWith('rspec')


