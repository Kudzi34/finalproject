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
    imageUrl VARCHAR (255),
    firstname VARCHAR(255) NOT NULL,
    lastname VARCHAR (255)  NOT NULL,
    nickname VARCHAR (255) NOT NULL,
    position VARCHAR(255) NOT NULL,
    weight VARCHAR NOT NULL,
    height VARCHAR (6) NOT NULL,
    age INTEGER NOT NULL,
    country VARCHAR(255) NOT NULL
);

INSERT INTO players (imageUrl,firstname, lastname, nickname, position, weight, height, age, country)
VALUES ('Kudzai_Nyakunu.png','Kudzai', 'Nyakunu', 'Bhuru', 'Center', '90kg', '1.75cm', 35, 'Zimbabwe');
INSERT INTO players (imageUrl,firstname, lastname, nickname, position, weight, height, age, country)
VALUES ('Will_Krause.png','Will', 'Krause', 'Bigboi', 'prop', '127kg', '1.87cm', 24, 'England');
INSERT INTO players (imageUrl,firstname, lastname, nickname, position, weight, height, age, country)
VALUES ('Otto_Nilsson.png','Otto', 'Nilsson', 'Unkown', 'hooker', '80kg', '1.79cm', 20, 'Sweden');
INSERT INTO players (imageUrl, firstname, lastname, nickname, position, weight, height, age, country)
VALUES ('Saidal_Sadigi.png','Saidal', 'Sadigi', 'Unkown', 'Flanker', '187kg', '1.79cm',33 , 'Sweden');
INSERT INTO players (imageUrl, firstname, lastname, nickname, position, weight, height, age, country)
VALUES ('Emil_Strandqvist.png','Emil', 'Strandqvist', 'Unkown', 'Flanker', '121kg', '1.95cm', 21, 'Sweden');
INSERT INTO players (imageUrl, firstname, lastname, nickname, position, weight, height, age, country)
VALUES ('Gustav_Linnberg.png', 'Gustav', 'Linnberg', 'Unkown', 'Prop', '108kg', '1.84cm', 20, 'Sweden');
INSERT INTO players (imageUrl, firstname, lastname, nickname, position, weight, height, age, country)
VALUES ('Christian_Sjodahl.png', 'Christian', 'Sjodahl', 'Unkown', 'Lock', '120kg', '1.90cm', 30, 'Sweden');
INSERT INTO players (imageUrl, firstname, lastname, nickname, position, weight, height, age, country)
VALUES ('Marcus_Fjelner.png', 'Marcus', 'Fjelner', 'Unkown', 'Eigthman', '85kg', '1.76cm', 32, 'Sweden');
INSERT INTO players (imageUrl, firstname, lastname, nickname, position, weight, height, age, country)
VALUES ('Eliseo_Pausa.png','Eliseo', 'Pausa', 'Unkown', 'Flanker', '116kg', '1.84cm', 32, 'Spain');
INSERT INTO players (imageUrl, firstname, lastname, nickname, position, weight, height, age, country)
VALUES ('Erik_jonsson.png', 'Erik', 'Jonsson', 'Unkown', 'Scrumhalf', '72kg', '1.76cm', 22, 'Sweden');
INSERT INTO players (imageUrl, firstname, lastname, nickname, position, weight, height, age, country)
VALUES ('Ricardo_Moses.png','Ricardo', 'Moses', 'Unkown', 'Flyhalf', '86kg', '1.77cm', 32, 'South Africa');
INSERT INTO players (imageUrl, firstname, lastname, nickname, position, weight, height, age, country)
VALUES ('Carmine_Urti.png', 'Carmine', 'Urti', 'Unkown', 'Wing', '80kg', '1.82cm', 26, 'Italy');
INSERT INTO players (imageUrl, firstname, lastname, nickname, position, weight, height, age, country)
VALUES ('Teva_Kaplan.png','Teva', 'Kaplan', 'Unkown', 'Center', '96kg', '1.85cm', 29, 'France');
INSERT INTO players (imageUrl, firstname, lastname, nickname, position, weight, height, age, country)
VALUES ('Samuel_Ahlbeck.png', 'Samuel', 'Ahlbeck', 'Unkown', 'Center', '75kg', '1.75cm', 20, 'Sweden');
INSERT INTO players (imageUrl, firstname, lastname, nickname, position, weight, height, age, country)
VALUES ('Roman_Goncalves.png','Roman', 'Goncalves', 'Unkown', 'Fullback', '71kg', '1.71cm', 29, 'France');

SELECT * FROM players;


-- INSERT INTO players ('Ryan', 'Francis', 'Forward', 21, 'Deadly beast killer person')
-- // INSERT INTO players ('Ryan', 'Francis', 'Forward', 21, 'Deadly beast killer person')
-- // INSERT INTO players ('Ryan', 'Francis', 'Forward', 21, 'Deadly beast killer person')
-- // INSERT INTO players ('Ryan', 'Francis', 'Forward', 21, 'Deadly beast killer person')
-- // INSERT INTO players ('Ryan', 'Francis', 'Forward', 21, 'Deadly beast killer person')
