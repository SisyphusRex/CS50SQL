SELECT "first_name", "last_name", "salary", "HR", "salaries"."year" FROM "players"
JOIN "performances" ON "performances"."player_id" = "players"."id"
JOIN "salaries" ON "salaries"."player_id" = "players"."id"
ORDER BY "players"."id";

SELECT DISTINCT "first_name", "last_name", "salary", "HR", "salaries"."year" FROM "players"
JOIN "performances" ON "performances"."player_id" = "players"."id"
JOIN(SELECT "salary","year","player_id" FROM "salaries" GROUP BY "salaries"."player_id") "salaries" ON "salaries"."player_id" = "players"."id"
ORDER BY "players"."id";