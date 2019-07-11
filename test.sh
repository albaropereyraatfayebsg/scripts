#! /bin/sh -
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

