DROP DATABASE IF EXISTS stratbase;
CREATE DATABASE stratbase;

\c stratbase;

CREATE TABLE platforms (
    platform_id SERIAL PRIMARY KEY,
    platform_name VARCHAR(255)
);

CREATE TABLE genres (
    genre_id SERIAL PRIMARY KEY,
    genre_name VARCHAR(255)
);

CREATE TABLE games (
    game_id SERIAL PRIMARY KEY,
    game_description TEXT,
    game_name VARCHAR(255),
    platform VARCHAR(255) REFERENCES platforms(platform_id),
    genre VARCHAR(255) REFERENCES genre(genre_id)
);

CREATE TABLE sections (
    section_id SERIAL PRIMARY KEY,
    section_name VARCHAR(255),
    game VARCHAR(255)
);

CREATE TABLE levels (
    level_id SERIAL PRIMARY KEY,
    level_name VARCHAR(255),
);

CREATE TABLE sublevels (
    sublevel_id SERIAL PRIMARY KEY,
    sublevel_name VARCHAR(255)
);

CREATE TABLE strats (
    strat_id SERIAL PRIMARY KEY,
    chapter VARCHAR(255) REFERENCES chapters(chapter_id),
    room VARCHAR(255),
    strat_name VARCHAR(255),
    notes TEXT,
    strat_time DECIMAL,
    video VARCHAR(255)
);
