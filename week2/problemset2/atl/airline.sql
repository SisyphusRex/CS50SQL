SELECT * FROM "airlines" JOIN "concourses" ON "airlines"."id" = "concourses"."airline_id";

INSERT INTO "passengers" VALUES (1, 'Amelia', 'Earhart');

INSERT INTO "airlines" VALUES (1, 'Delta');
INSERT INTO "concourses" VALUES (1, 1, 'A'), (2, 1, 'B'), (3, 1, 'C'), (4, 1, 'D'), (5, 1, 'T');