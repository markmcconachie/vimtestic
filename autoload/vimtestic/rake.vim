fu! vimtestic#rake#RunTestFile(file)
  exec '!TEST=' . a:file . " bundle exec rake test"
endf

fu! vimtestic#rake#RunTestSuite()
  exec '!bundle exec rake test'
endf

