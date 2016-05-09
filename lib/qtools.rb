#!/usr/bin/env ruby

help_string = <<-HELP

-- qtools:
- qqsub  to submit a script or a compiled executable
- qclean to remove .e* and .o* run files in the current directory
- qwatch to see the running jobs for the current user
- qcount to see the number of running jobs for the current user
- qnode to list the free nodes
- qundo to stop the last job for the current user

HELP


def help
  puts help_string
end
