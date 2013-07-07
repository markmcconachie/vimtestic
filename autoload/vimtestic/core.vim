fu! vimtestic#core#TestTarget(target)
  let t:mcm_test_target=a:target
  echom "Test target set to ". a:target
endf

fu! vimtestic#core#RunTestFile()
    if !exists("t:mcm_test_target")
      echoer "[Vimtestic] No test target set"
    else
      exec 'call vimtestic#' . t:mcm_test_runner . '#RunTestFile' . '("' . t:mcm_test_target '")'
    end
endf

fu! vimtestic#core#RunTestSuite()
  exec 'call vimtestic#' . t:mcm_test_runner . '#RunTestSuite()'
endf

fu! vimtestic#core#TestWith(tool)
  let t:mcm_test_runner = a:tool
endf

