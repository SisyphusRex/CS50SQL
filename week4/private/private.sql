DROP TABLE IF EXISTS "cipher";
DROP TABLE IF EXISTS "phrases";
DROP VIEW IF EXISTS "message";

CREATE TABLE "cipher" (
    "cipher_id" INTEGER,
    "sentence_id" INTEGER,
    "start" INTEGER,
    "length" INTEGER,
    PRIMARY KEY("cipher_id"),
    FOREIGN KEY("sentence_id") REFERENCES "sentences"("id")
);

INSERT INTO "cipher" ("sentence_id", "start", "length")
VALUES
(14, 98, 4),
(114, 3, 5),
(618, 72, 9),
(630, 7, 3),
(932, 12, 5),
(2230, 50, 7),
(2346, 44, 10),
(3041, 14, 5);

CREATE TABLE "phrases" (
    "phrase_id" INTEGER,
    "phrase" TEXT NOT NULL,
    PRIMARY KEY("phrase_id"),
    FOREIGN KEY("phrase_id") REFERENCES "cipher_id"
);

INSERT INTO "phrases" ("phrase_id", "phrase")
SELECT "cipher_id", substr("sentence", "start", "length")
FROM "cipher"
INNER JOIN "sentences" ON "cipher"."sentence_id" = "sentences"."id";

CREATE VIEW "message" AS
SELECT "phrase" FROM "phrases" AS "phrase";




