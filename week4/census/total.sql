CREATE VIEW "total" AS
SELECT
SUM("families") AS "Total Families",
SUM("households") AS "Total Households",
SUM("population") AS "Total Population",
SUM("male") AS "Total Males",
SUM("female") AS "Total Females"
FROM "census";