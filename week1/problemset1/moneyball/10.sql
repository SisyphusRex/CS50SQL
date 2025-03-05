SELECT "first_name", "last_name", "salary", "performances"."year", "HR" FROM "players"
JOIN "salaries" ON "salaries"."player_id" = "players"."id"
JOIN "performances" ON "performances"."player_id" = "salaries"."player_id"
WHERE "salaries"."year" = "performances"."year"
ORDER BY "players"."id" ASC, "performances"."year" DESC, "HR" DESC, "salary" DESC;