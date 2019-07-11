#! /bin/sh -
if [ "X-h" = "X$1" ];
then
  printf "Help stuff";
elif [ -z "$1" ];
then
  printf "Enter the name of the directory you woud like to get the sitepath for.\n";
  read dir;
else
  dir="$1";
fi

httpdRootDir="/var/www/html";
sitePath=$(sudo find ${httpdRootDir} -maxdepth 2 -type d -name ${dir} -print);
if [ -z "$sitePath" ];
then
  prinf "The directory you entered %s does not exist.\n" "$dir";
  exit 1;
else
  printf "$sitePath";
fi

