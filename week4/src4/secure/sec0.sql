CREATE VIEW "public_rides" AS
SELECT "origin", "destination", 'Big Rider' AS "rider"
FROM "rides";