DROP DATABASE IF EXISTS stratbase;
CREATE DATABASE stratbase;

\c stratbase;

CREATE TABLE strats (
    strat_id SERIAL PRIMARY KEY,
    chapter VARCHAR(255) REFERENCES chapters(chapter_id),
    room VARCHAR(255),
    strat_name VARCHAR(255),
    notes TEXT,
    strat_time DECIMAL,
    video VARCHAR(255)
);

CREATE TABLE chapters (
    chapter_id SERIAL PRIMARY KEY,
    chapter_name VARCHAR(255),
    chapter_code VARCHAR(255)
);