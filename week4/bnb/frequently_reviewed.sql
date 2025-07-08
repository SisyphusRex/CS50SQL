DROP VIEW IF EXISTS "frequently_reviewed";

CREATE VIEW "frequently_reviewed" AS
SELECT "listings"."id", "property_type", "host_name", COUNT("r"."id") AS "reviews"
FROM "listings"
JOIN "reviews" AS "r" ON "listings"."id" = "r"."listing_id"
GROUP BY "listings"."id"
ORDER BY "reviews" DESC, "property_type" ASC, "host_name" ASC LIMIT 100;