#!/usr/bin/env ruby

help_string = <<-HELP

-- qtools:
- qqsub  to submit a script or a compiled executable
- qwatch to see the running jobs for the current user
- qclean to remove .e* and .o* run files in the current directory

HELP


def help
  puts help_string
end
