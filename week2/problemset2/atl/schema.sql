DROP TABLE IF EXISTS "passengers";
DROP TABLE IF EXISTS "checkins";
DROP TABLE IF EXISTS "airlines";
DROP TABLE IF EXISTS "flights";
DROP TABLE IF EXISTS "concourses";


CREATE TABLE "passengers" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE "checkins" (
    "id" INTEGER,
    "datetime" NUMERIC NOT NULL,
    "flight_id" INTEGER,
    "passenger_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("flight_id") REFERENCES "flights"("id"),
    FOREIGN KEY("passenger_id") REFERENCES "passengers"("id")
);

CREATE TABLE "airlines" (
    "id" INTEGER,
    "name" TEXT NOT NULL UNIQUE,
    PRIMARY KEY("id")
);

CREATE TABLE "concourses" (
    "id" INTEGER,
    "airline_id" INTEGER,
    "name" TEXT NOT NULL CHECK("name" IN ('A', 'B', 'C', 'D', 'E', 'F', 'T')),
    PRIMARY KEY("id"),
    FOREIGN KEY("airline_id") REFERENCES "airlines"("id")
);

CREATE TABLE "flights" (
    "id" INTEGER,
    "flight_number" INTEGER NOT NULL,
    "airline_id" INTEGER,
    "from_code" TEXT NOT NULL,
    "to_code" TEXT NOT NULL,
    "depart_datetime" TEXT NOT NULL CHECK("depart_datetime" LIKE '____-__-__ __:__:__'),
    "arrive_datetime" TEXT NOT NULL CHECK("arrive_datetime" LIKE '____-__-__ __:__:__')),
    PRIMARY KEY("id"),
    FOREIGN KEY("airline_id") REFERENCES "airlines"("id")
);


