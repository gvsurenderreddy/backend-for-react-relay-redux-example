#!/bin/bash
echo "use $DATABASE;" | cat - wp_backup.sql > temp | mv temp wp_backup.sql
docker exec -i db mysql -uroot -p$PASSWORD < wp_backup.sql