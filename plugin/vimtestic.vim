function! SetTestFile()
  let t:mcm_test_file=@%
  echom "Test file set to ". @%
endfunction

function! RunTestFile()
    if !exists("t:mcm_test_file")
      echo "No testfile set"
    else
      exec 'call RunTestFileWith' . t:mcm_test_runner . '("' . t:mcm_test_file '")'
    end
endfunction

function! RunTestSuite()
  exec 'call RunTestSuiteWith' . t:mcm_test_runner . '()'
endfunction

function! TestWith(tool)
  let t:mcm_test_runner = a:tool
endfunction
command! -nargs=* TestWith call TestWith('<args>')


""""""""""""""""""""
"  Rspec
""""""""""""""""""""
function! RunTestFileWithRspec(file)
  exec '!bundle exec rspec ' . a:file
endfunction

function! RunTestSuiteWithRspec()
  exec '!bundle exec rspec spec'
endfunction

""""""""""""""""""""
"  Rake
""""""""""""""""""""
function! RunTestFileWithRake(file)
  exec '!TEST=' . a:file . =" bundle exec rake test"
endfunction

function! RunTestSuiteWithRake()
  exec '!bundle exec rake test'
endfunction


""""""""""""""""""""
"  Default  mappings
""""""""""""""""""""
noremap <leader>T :call SetTestFile()<cr>
noremap <leader>t :call RunTestFile()<cr>
noremap <leader>r :call RunTestSuite()<cr>

" Default to Rspec
silent call TestWith('Rspec')


