#! /bin/sh -

if [ -z $(pidof screen) ];
then
   screen -r;
   if [ $? -gt 0 ];
   then
     screen;
   fi
fi
