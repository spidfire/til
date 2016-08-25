# Transactions

Everything encapsulated will not be saved in the db until the commit is run.

This is ideal for situations where you should commit everything or nothing at all.

# Keep in mind

 - Could potentially freeze your db because you keep a separate reality
 - Can increase import speeds significantly
 - Not all database types support it
 - Can be used on multiple databases
 - Can be used to make structure changes


# HOW

Just put a `START TRANSACTION;` above your sql code.

And if you want it to be committed just put a `COMMIT;` below.

And if you don't want to commit `ROLLBACK`;


# more info

http://dev.mysql.com/doc/refman/5.7/en/commit.html