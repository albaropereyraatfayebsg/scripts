#! /bin/sh -

# Truncate dsserv.traker from DSSERV
sh /opt/lemonJuice/helpers/runSQLQuery.sh dsserv 'TRUNCATE TABLE dsserv.tracker;';
# DELETE records older than 30 days
# dsserv.atc_auditmax
sh /opt/lemonJuice/helpers/runSQLQuery.sh dsserv 'DELETE FROM dsserv.atc_auditmax WHERE date_modified < DATE_SUB(NOW(), INTERVAL 30 DAY);';
# macmac.activities
sh /opt/lemonJuice/helpers/runSQLQuery.sh macmac 'DELETE FROM macmac.activities WHERE date_modified < DATE_SUB(NOW(), INTERVAL 30 DAY);';
# macmac.activities_users
sh /opt/lemonJuice/helpers/runSQLQuery.sh macmac 'DELETE FROM macmac.activities_users WHERE date_modified < DATE_SUB(NOW(), INTERVAL 30 DAY);';
