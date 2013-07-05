#vimtestic.vim

## About

`vimtestic.vim` is a vim plugin for quickly triggering test running.

## Usage (with the example of RSpec)

1. Set your test runner using 

        :TestWith rspec
        
2. Run whole test suite with `<leader> r`

3. Open the test file that you would like to focus on and enter
    `<leader> T` to mark it as the current test.
    
4. Enter `<leader> t` to run that one specific file

## Autoset test runner for a project

I suggest adding the following two lines to your ~/.vimrc

        set exrc      " Load a directory specific .vimrc
        set secure    " Don't allow that vimdc to run anything dangerous
        
Then create (in your project folder) a `.vimrc` file with the contents
        
        call vimtestic#core#TestWith('rake')
        
## Supported runners

* Rspec
* Rake

I will add more but feel free to pull request :)

New runners can be added in `autoload/vimtestic/[name].vim`.
See the existing runners as examples.


## Instalation (With [Vundle](https://github.com/gmarik/vundle))

1. Add the following line to your `.vimrc`.

        Bundle 'https://github.com/markmcconachie/vimtestic.git'    

2. Run this command on vim.

        :BundleInstall


## License

  The MIT License. See `LICENSE`.