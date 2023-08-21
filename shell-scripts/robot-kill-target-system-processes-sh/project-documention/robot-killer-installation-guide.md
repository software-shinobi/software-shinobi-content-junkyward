
# How to Install

## What We Will Do 

to install the robot it's basially a two step process.

1. modify the permission bits on all script files

2. execute the robot install script

This will be easy!

## What User Do I Need To Be

Any user with admininistrative rights.

basically...

if this user can right to /, then it's a root user.

## Testing If I'm A Root User

can you run the following command without the computer complaining:

```
echo "i can write" >> /just-a-test-file-delete-me.dat
reset
clear
cat /just-a-test-file-delete-me.dat
```

did it show you "i can write"?

If so... you have the correct permissions.

## Make the file executabe

So first we need to make the script file executable. 

We do that with chmod.

```
chmod +x install-robot-kill-target-system-processes.sh
```

## Run The Robot Install Script

Now we run the one-click install script.

```
/bin/sh install-robot-kill-target-system-processes.sh

```

## Now We Verify It's Running

There is a monitor script but it's ugly.

So we'll start checking for processes and see if the robots are running

so run this command:

```
watch -n 1 "ps aux | grep robot"
```

Wait for a 1-2 minutes and you should see an entry talking about robots.

When you see that... now try to open a target application process.
