SELECT "first_name", "last_name", "salary", "HR", "salaries"."year" FROM "players"
JOIN "performances" ON "performances"."player_id" = "players"."id"
JOIN "salaries" ON "salaries"."player_id" = "players"."id"
ORDER BY "players"."id";

SELECT DISTINCT "first_name", "last_name", "salary", "HR", "salaries"."year" FROM "players"
JOIN "performances" ON "performances"."player_id" = "players"."id"
JOIN(SELECT "salary","year","player_id" FROM "salaries" GROUP BY "salaries"."player_id") "salaries" ON "salaries"."player_id" = "players"."id"
ORDER BY "players"."id";

SELECT "players"."first_name" AS "First Name", "players"."last_name" AS "Last Name", "salaries"."salary" AS "Salary", "performances"."HR" AS "Home Runs"
FROM "players"
JOIN(SELECT "salary", "player_id" FROM "salaries" GROUP BY "player_id", "year") "salaries" ON "players"."id" = "salaries"."player_id"
JOIN(SELECT "HR", "player_id" FROM "performances" GROUP BY "player_id", "year") "performances" ON "players"."id" = "performances"."player_id"
;

ORDER BY "salaries"."salary" / "performances"."RBI" ASC
        LIMIT 10

ORDER BY "salaries"."salary" / "performances"."RBI" ASC
        LIMIT 10