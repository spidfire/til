# Backup Script MYSQL
```
#!/bin/bash

set -e
set -x
USR=root
PWD="PASSWORD HERE!!"
OUTPUT_YESTERDAY=/root/backup_yesterday/
OUTPUT=/root/backup/


rm -rf $OUTPUT_YESTERDAY
mv $OUTPUT $OUTPUT_YESTERDAY
mkdir -p $OUTPUT


databases=`mysql -u $USR -p"$PWD" -e "SHOW DATABASES;" | tr -d "| " | grep -v Database`
# databases=app_demo
DATE=`date +%Y-%m-%d_%H:00`

for db in $databases; do
    if [[ "$db" != "information_schema" ]] && [[ "$db" != "performance_schema" ]] && [[ "$db" != "mysql" ]] && [[ "$db" != _* ]] ; then
        DATADIR=$OUTPUT/data.$db/$DATE
        mkdir -p $DATADIR
        echo "Dumping database: $db"
        mysqldump -u $USR -p"$PWD"  --no-data --databases $db > $DATADIR/structure.$db.sql
        echo "Dumping database data: $db"

        tbl_count=0

        for t in $(mysql -NBA -u $USR -p"$PWD" -D $db -e 'show tables')
        do
            mysqldump -u $USR -p"$PWD" --no-create-info  --skip-comments $db $t  | gzip > $DATADIR/$t.sql.gz
            tbl_count=$(( tbl_count + 1 ))
        done

        echo "$tbl_count tables dumped from database '$db' into dir=$DATADIR"
    fi
done


echo "EXPORT DONE NOW UPLOADING"


scp -r "$OUTPUT/." "backup@externalserver:/backup_directory"


echo "Upload done"

```