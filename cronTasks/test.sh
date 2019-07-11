#! /bin/sh -

# Table to truncate
printf "Truncate the following\n\n\n";
printf "dsserv.tracker\n";
# Truncate dsserv.traker from DSSERV
sh /opt/lemonJuice/helpers/runSQLQuery.sh dsserv 'TRUNCATE TABLE dsserv.tracker;'&
# The /proc directory exists while the command runs.
# $! gets the process ID of the process in the background.
while [ -e /proc/$! ];
do
  sleep 1
  printf ".";
done
printf "\n";
