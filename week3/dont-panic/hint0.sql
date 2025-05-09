INSERT INTO "user_logs" ("type", "new_password")
SELECT 'update', (
    SELECT "password" FROM "users" WHERE "username" = 'adam1'
);

-- user_logs is the table, type and password are the columns; SELECT is used rather than values because
-- our inserted values are mixed static and query: 'update' is type value and the query returns the password value