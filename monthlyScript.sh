#! /bin/sh -
if [ "X$1" = "X-h" ];
then
  printf "Help stuff.\n";
elif [ -z "$1" ];
then
  printf "Enter the name of the directory you woud like to get the report infor for.\n";
  read dir;
else
  dir="$1";
fi

printf "%s\n";
sugarutils --sugar-version $dir;
df -h --output=avail,target | grep $dir | sed 's/ //g' | sed 's/\/.*$//g'
month=$(date +'%b');
# TODO update this
# this assumes the user and group are both root
sudo find /mnt -mtime -1 -exec ls -lh {} + | awk '/'$dir'/ && /sql\.gz/ {print $0}' | sed 's/ //g'| sed 's/^.*rootroot//g' | sed 's/'$month'.*//g';
# TODO update this
# this assumes the user and group are both root
sudo find /mnt -mtime -1 -exec ls -lh {} + | awk '/'$dir'/ && /\.tgz/ {print $0}' | sed 's/ //g'| sed 's/^.*rootroot//g' | sed 's/'$month'.*//g';


printf "\n\n\n\\n";
printf "%60s\n" | tr " " "-";
printf "fbsghosting.com\n";
tmpUnformatedDate=$(openssl x509 -enddate -noout -in /var/www/ssl/fbsghosting.crt | sed 's/^notAfter=//g');
tmpDate=$(date -d "$tmpUnformatedDate" '+%m/%d/%Y' );
printf "%s\n" "$tmpDate";
printf "%60s\n" | tr " " "-";
printf "fayebsg.com\n";
tmpUnformatedDate=$(openssl x509 -enddate -noout -in /var/www/html/faybus/ssl/fayebsg.crt | sed 's/^notAfter=//g');
tmpDate=$(date -d "$tmpUnformatedDate" '+%m/%d/%Y' );
printf "%s\n" "$tmpDate";
printf "%60s\n" | tr " " "-";
printf "dsscrm.com\n";
tmpUnformatedDate=$(openssl x509 -enddate -noout -in /var/www/html/dsserv/ssl/www_dsscrm_com_2019.crt | sed 's/^notAfter=//g');
tmpDate=$(date -d "$tmpUnformatedDate" '+%m/%d/%Y' );
printf "%s\n" "$tmpDate"
printf "%60s\n" | tr " " "-";
printf "totalsafety.org\n";
tmpUnformatedDate=$(openssl x509 -enddate -noout -in /var/www/html/totsaf/ssl/totalsafety.crt| sed 's/^notAfter=//g');
tmpDate=$(date -d "$tmpUnformatedDate" '+%m/%d/%Y' );
printf "%s\n" "$tmpDate";
