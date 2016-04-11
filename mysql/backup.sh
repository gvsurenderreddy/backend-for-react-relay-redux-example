#!/usr/bin/env bash
docker exec -i graphqlwordpressexample_db_1 mysqldump -hlocalhost -uroot -p$PASSWORD $DATABASE > wp_backup.sql