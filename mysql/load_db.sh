#!/bin/bash
echo "use $DATABASE;" | cat - wp_backup.sql > temp | mv temp wp_backup.sql
docker exec -i graphqlwordpressexample_db_1 mysql -uroot -p$PASSWORD < wp_backup.sql