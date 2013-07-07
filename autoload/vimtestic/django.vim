fu! vimtestic#django#RunTestFile(file)
  exec '!python manage.py test ' . a:file
endf

fu! vimtestic#django#RunTestSuite()
  exec '!python manage.py test'
endf

