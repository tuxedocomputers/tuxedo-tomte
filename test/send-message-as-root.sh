#!/bin/sh

X=Xorg                   # works for the given X command
copy_envs="DISPLAY XAUTHORITY DBUS_SESSION_BUS_ADDRESS"

# calling who with LANG empty ensures a consistent date format
who_line=$(LANG= who -u | awk '$2 ~ ":[0-9]"')

x_user=$(echo $who_line | cut -d ' ' -f 1)  # the user associated with the tty
#pid=$(echo $who_line | cut -d ' ' -f 7)     # the user's logon process

for env_name in $copy_envs
do
  # if the variable is not set in the process environment, ensure it does not remain exported here
  unset "$env_name"

  # use the same line as is in the environ file to export the variable
  export "$(grep -az "^$env_name=" /proc/1584/environ)" >/dev/null
done

sudo -u "$x_user" notify-send "hello"
