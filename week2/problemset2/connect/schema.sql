DROP TABLE IF EXISTS "users";
DROP TABLE IF EXISTS "schools";
DROP TABLE IF EXISTS "companies";
DROP TABLE IF EXISTS "userconnections";
DROP TABLE IF EXISTS "schoolconnections";
DROP TABLE IF EXISTS "companyconnections";

CREATE TABLE "users" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "username" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE "schools" (
    "id" INTEGER,
    "type" TEXT CHECK("type" IN ('Elementary School', 'Middle School', 'High School', 'Lower School', 'Upper School', 'College', 'University')),
    "city" TEXT,
    "state" TEXT,
    "founded" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE "companies" (
    "id" INTEGER,
    "industry" TEXT,
    "city" TEXT,
    "state" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE "userconnections" (
    "id" INTEGER,
    "user1_id" INTEGER,
    "user2_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("user1_id") REFERENCES "users"("id"),
    FOREIGN KEY("user2_id") REFERENCES "users"("id")
);

CREATE TABLE "schoolconnections" (
    "id" INTEGER,
    "user_id" INTEGER,
    "school_id" INTEGER,
    "start_date" TEXT CHECK("start_date" LIKE '____-__-__'),
    "end_date" TEXT CHECK("end_date" LIKE '____-__-__'),
    "degree" TEXT,
    PRIMARY KEY("id"),
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("school_id") REFERENCES "schools"("id")
);

CREATE TABLE "companyconnections" (
    "id" INTEGER,
    "user_id" INTEGER,
    "company_id" INTEGER,
    "start_date" TEXT CHECK("start_date" LIKE '____-__-__'),
    "end_date" TEXT CHECK("end_date" LIKE '____-__-__'),
    "title" TEXT,
    PRIMARY KEY("id"),
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("company_id") REFERENCES "companies"("id")
);