--1-2. feladat
CREATE DATABASE filmadatbazis
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_hungarian_ci;

--3.feladat

USE konyvtaradatbazis;

--4. feladat

CREATE TABLE filmek ( 
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    cim VARCHAR(150) NOT NULL UNIQUE,
    rendezo VARCHAR(120) NOT NULL,
    megjelenesi_ev YEAR,
    hossz INT CHECK (hossz BETWEEN 25 AND 320),
    korhatar ENUM('0', '6', '12', '16', '18'),
    ertekeles FLOAT DEFAULT 5.0
);

--5. feladat 

CREATE TABLE szineszek (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    nev VARCHAR(100) NOT NULL,
    szuletesi_datum DATE,
    nemzetiseg VARCHAR(50) DEFAULT 'magyar',
    aktiv ENUM ('igen', 'nem') DEFAULT 'igen',
    regisztracio_idopontja DATETIME DEFAULT CURRENT_TIMESTAMP
);

--6. feladat

SHOW CREATE TABLE szineszek

