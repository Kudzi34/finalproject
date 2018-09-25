DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS players;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    firstname VARCHAR(255) NOT NULL,
    lastname VARCHAR (255)  NOT NULL,
    email VARCHAR (255) NOT NULL UNIQUE,
    hashedpassword VARCHAR(255) NOT NULL
);

CREATE TABLE players(
    id SERIAL PRIMARY KEY,
    firstname VARCHAR(255) NOT NULL,
    lastname VARCHAR (255)  NOT NULL,
    nickname VARCHAR (255) NOT NULL,
    position VARCHAR(255) NOT NULL,
    weight INTEGER NOT NULL,
    height INTEGER NOT NULL,
    age INTEGER NOT NULL,
    country VARCHAR(255) NOT NULL
);

INSERT INTO players (Firstname, lastname, nickname, position, weight, height, age, country)
VALUES ('Kudzai', 'Nyakunu', 'Bhuru', 'Center', 90, 1.75, 35, 'Zimbabwe');
INSERT INTO players (Firstname, lastname, nickname, position, weight, height, age, country)
VALUES ('Will', 'Krause', 'Bigboi', 'prop', 127, 1.87, 24, 'England');
INSERT INTO players (Firstname, lastname, nickname, position, weight, height, age, country)
VALUES ('Otto', 'Nilsson', 'Cap', 'hooker', 80, 1.79, 20, 'Swedish');
-- INSERT INTO players ('Ryan', 'Francis', 'Forward', 21, 'Deadly beast killer person')
-- // INSERT INTO players ('Ryan', 'Francis', 'Forward', 21, 'Deadly beast killer person')
-- // INSERT INTO players ('Ryan', 'Francis', 'Forward', 21, 'Deadly beast killer person')
-- // INSERT INTO players ('Ryan', 'Francis', 'Forward', 21, 'Deadly beast killer person')
-- // INSERT INTO players ('Ryan', 'Francis', 'Forward', 21, 'Deadly beast killer person')
