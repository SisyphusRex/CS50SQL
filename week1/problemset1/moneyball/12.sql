WITH "costperH" AS (
    SELECT "salaries"."player_id", "salaries"."salary" / "performances"."H" AS "CPH"
    FROM "salaries"
    JOIN "performances" ON "salaries"."player_id" = "performances"."player_id"
        AND "salaries"."year" = "performances"."year"
    WHERE "salaries"."year" = 2001
        AND "performances"."H" > 0
    ORDER BY "CPH" ASC
    LIMIT 10


),

"costperRBI" AS (
    SELECT "salaries"."player_id", "salaries"."salary" / "performances"."RBI" AS "CPRBI"
    FROM "salaries"
    JOIN "performances" ON "salaries"."player_id" = "performances"."player_id"
        AND "salaries"."year" = "performances"."year"
    WHERE "salaries"."year" = 2001
        AND "performances"."RBI" > 0
    ORDER BY "CPRBI"
    LIMIT 10


)

SELECT "costperH"."player_id" FROM
    "costperH" JOIN "costperRBI"
    ON "costperH"."player_id" = "costperRBI"."player_id";

