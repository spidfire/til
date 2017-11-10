# Import and export


##Importing a database:

```
mysql -u $username -p$password $database < $filename.sql
```

Note the -p does not have a space after it because of strangeness



## Exporting a database

Export all databases `mysqldump --opt --all-databases > dump.sql`

Exporting one database `mysqldump --opt test > dump.sql`


```
Arguments
--set-charset


--opt

This option, enabled by default, is shorthand for the combination of --add-drop-table --add-locks --create-options --disable-keys --extended-insert --lock-tables --quick --set-charset. It gives a fast dump operation and produces a dump file that can be reloaded into a MySQL server quickly.

--user=$username or -u $username
--password[=password], -p[password]


```