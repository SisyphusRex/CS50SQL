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
    "councourse" TEXT NOT NULL CHECK("councourse" IN ('A', 'B', 'C', 'D', 'E', 'F', 'T')),
    PRIMARY KEY("id")
);

CREATE TABLE "flights" (
    "id" INTEGER,
    "flight_number" INTEGER NOT NULL,
    "airline_id" INTEGER,
    "from_code" TEXT NOT NULL,
    "to_code" TEXT NOT NULL,
    "depart_datetime" NUMERIC NOT NULL,
    "arrive_datetime" NUMERIC NOT NULL,
    PRIMARY KEY("id"),
    FOREIGN KEY("airline_id") REFERENCES "airlines"("id")
)