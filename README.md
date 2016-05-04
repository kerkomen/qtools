# qtools

`qtools` offers the shortcuts for some common procedures when working with the Open Grid Scheduler.


## Installation

Install `qtools` using `gem`:

    $ gem install qtools

## Usage

- `qqsub`  to submit a script or a compiled executable
- `qwatch` to see the running tasks for the current user
- `qclean` to remove `.e[0-9]*` and `.o[0-9]*` files in the current directory

### qqsub

Usage:

    $ qqsub 'python3 my_script.py -i input.txt -v' -n my_name -m 8gb

The command above will create a shell script file with the corresponding content and submit a job which will feature the name `my_name` and require `8gb` of memory.

### qwatch

Usage:

    $ qwatch

The command above is equivalent to running `watch -n1 -d "qstat -u $USER" 2> /dev/null`.

Flags:

  - `-n`, `--nodes` to show information on nodes too (`qstat -n -u $USER`)

### qclean

Usage:

    $ qclean

The command above will run `rm *.[eo][0-9]* 2> /dev/null` in the current directory (if such files exist).

### qclean

## Contributing

Bug reports and pull requests are welcome on [GitHub](https://github.com/kerkomen/qtools).

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

