#!/usr/bin/env bash
docker exec -i db mysqldump -hlocalhost -uroot -p$PASSWORD $DATABASE > wp_backup.sql