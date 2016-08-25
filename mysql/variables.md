# Variables

`SET @username := "Almanapp";`

Can be used in the query:

`SELECT * from ledenlijst where username = @username`

You can also do this directly form a table

`SELECT @lid := id from ledenlijst where firstname=@username;`

This will return the last value into the variable.

## Example how to insert a user if not exists

```sql
START TRANSACTION;
USE the_test_database;
SET @username := "Testuser";
INSERT INTO `ledenlijst` (firstname, image) SELECT @username, 78797 from ledenlijst where (SELECT count(id) from ledenlijst WHERE firstname = @username) = 0 LIMIT 1;
SELECT @lid := id from ledenlijst where firstname=@username;
INSERT INTO `auth` (name,lid,rightgroup) SELECT @username,@lid, "user" from auth where (SELECT count(id) from auth WHERE name = @username) = 0 LIMIT 1;
SELECT @USERID := id from auth WHERE name = @username;
UPDATE push_messages SET auth_id = @USERID WHERE auth_id IS NULL;

COMMIT;
```