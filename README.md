# qtools

`qtools` offers the shortcuts for some common procedures when working with the Open Grid Scheduler.


## Installation

Install `qtools` using `gem`:

    $ gem install qtools

## Usage

- `qqsub`  to submit a script or a compiled executable
- `qclean` to remove `.e[0-9]*` and `.o[0-9]*` files in the current directory
- `qwatch` to see the running jobs for the current user
- `qcount` to see the number of running jobs for the current user
- `qnode` to list the free nodes
- `qundo` to stop the last submitted job for the current user
- `qless` to read the last error log `.e[0-9]*` in the current folder

### qqsub

Usage:

    $ qqsub 'python3 my_script.py -i input.txt -v' -n my_name -m 8gb

The command above will create a shell script file with the corresponding content and submit a job which will feature the name `my_name` and require `8gb` of memory.

Available parameters:

- `-n`, `--name`   - job title
- `-m`, `--memory` - memory (e.g., `80gb`)
- `-q`, `--queue`  - queue title
- `-t`, `--time`   - job time limit in hours (default is `24`)
- `-c`, `--cpu`    - number of CPUs

### qwatch

`qwatch` is equivalent to running `watch -n1 -d "qstat -u $USER"`. Use `-n` (`--nodes`) flag to show information on nodes too (`qstat -n1 -u $USER`)

### qclean

`qclean` will run `rm *.[eo][0-9]*` in the current directory (if such files exist).

### qcount

Use `qcount` to count the number of jobs for the `$USER`. Running `qcount -a` will output the number of jobs for all the users.

### qnode

Run `qnode` to print the list of free nodes sorted by their `LOAD`. Use `qnode -m` to sort the list of free nodes by memory available and `qnode -c` to sort the list by the number of free cores.

### qundo

`qundo` will try to run `qdel` for the last job submitted (for the current user).

### qless

Run `qless` to read the last default error log `.e[0-9]*` in the current folder. Use `-o` flag to read the last default output file.

## Contributing

Bug reports and pull requests are welcome on [GitHub](https://github.com/kerkomen/qtools).

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

