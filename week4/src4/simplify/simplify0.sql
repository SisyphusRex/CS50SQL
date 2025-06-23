SELECT "name", "title" FROM "authors"
JOIN "authored" ON "authored"."author_id" = "authors"."id"
JOIN "books" ON "books"."id" = "authored"."book_id";