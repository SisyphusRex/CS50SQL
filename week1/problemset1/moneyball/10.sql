SELECT "players"."first_name" AS "First Name", "players"."last_name" AS "Last Name", "salaries"."salary" AS "Salary", "performances"."HR" AS "Home Runs"
FROM "players"
JOIN(SELECT "salary", "player_id" FROM "salaries" GROUP BY "player_id", "year") "salaries" ON "players"."id" = "salaries"."player_id"
JOIN(SELECT "HR", "player_id" FROM "performances" GROUP BY "player_id", "year") "performances" ON "players"."id" = "performances"."player_id"
;