fu! vimtestic#rake#RunTestFile(file)
  exec '!FILE=' . a:file . " bundle exec rake test"
endf

fu! vimtestic#rake#RunTestSuite()
  exec '!bundle exec rake test'
endf

