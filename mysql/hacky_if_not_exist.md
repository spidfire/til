# Insert if not exist


# The dirty oneline way

```
INSERT INTO
    `ledenlijst`
        (firstname, image)
            SELECT @username, 78797
                from ledenlijst
                where (
                    SELECT count(id)
                    from ledenlijst
                    WHERE firstname = @username
                ) = 0
                LIMIT 1;

```

The `SELECT count(id) from ledenlijst WHERE firstname = @username` checks if there is a record
than the value is higher than one.

This will make the ` SELECT @username, 78797 from ledenlijst where (####QUERY ABOVE HERE ####) = 0 LIMIT 1;`
return nothing.

If there are 0 results the query will return one record `[@username, 78797]` which will be inserted into the database.