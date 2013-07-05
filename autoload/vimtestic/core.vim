fu! vimtestic#core#SetTestFile(file)
  let t:mcm_test_file=a:file
  echom "Test file set to ". a:file
endf

fu! vimtestic#core#RunTestFile()
    if !exists("t:mcm_test_file")
      echoer "[Vimtestic] No Testfile set"
    else
      exec 'call vimtestic#' . t:mcm_test_runner . '#RunTestFile' . '("' . t:mcm_test_file '")'
    end
endf

fu! vimtestic#core#RunTestSuite()
  exec 'call vimtestic#' . t:mcm_test_runner . '#RunTestSuite()'
endf

fu! vimtestic#core#TestWith(tool)
  let t:mcm_test_runner = a:tool
endf

