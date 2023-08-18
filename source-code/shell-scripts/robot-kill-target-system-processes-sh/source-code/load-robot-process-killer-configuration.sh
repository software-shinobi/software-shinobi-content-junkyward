
## Here are the names of all the processes that we want killed.
## to add new ones,just following the same pattern.

set --  "Tor" "tor" "firefox" "mono"   ## you can add stuff here. put the process name in double quotes

processNameGroup=$@; ## don't touch this.

##

targetCountLocalExecutions=64; ## don't touch this.

##