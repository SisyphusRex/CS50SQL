SELECT "book_id" FROM "authored"
WHERE "author_id" = (
    SELECT "id" FROM "authors"
    WHERE "name" = 'Fernanda Melchor'
    );
