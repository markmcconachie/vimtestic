fu! vimtestic#rspec#rspec_cmd()
  let cmd = '!'

  if filereadable("Gemfile")
    let cmd = cmd . 'bundle exec '
  endif

  if filereadable("./bin/rspec")
    let cmd = cmd . 'bin/rspec '
  else
    let cmd = cmd . 'rspec '
  end

  echom cmd
  return cmd
endf

fu! vimtestic#rspec#RunTestFile(file)
  exec vimtestic#rspec#rspec_cmd() . a:file
endf

fu! vimtestic#rspec#RunTestSuite()
  exec vimtestic#rspec#rspec_cmd() . 'spec'
endf

