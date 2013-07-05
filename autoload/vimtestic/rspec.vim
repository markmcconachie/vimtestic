fu! vimtestic#rspec#RunTestFile(file)
  exec '!bundle exec rspec ' . a:file
endf

fu! vimtestic#rspec#RunTestSuite()
  exec '!bundle exec rspec spec'
endf

