mkdir -p /var/opt/mssql
cd /var/opt/mssql
/opt/mssql/bin/sqlservr

# following line protects container from being exitied in case the sql doesn't start
# it is useful for docker debugging but must be removed on production
tail -f /dev/null
