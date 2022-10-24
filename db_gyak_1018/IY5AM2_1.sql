DROP DATABASE IF EXISTS IY5AM2;
CREATE DATABASE IY5AM2;

DROP TABLE IF EXISTS IY5AM2.Gyarto;
CREATE TABLE IY5AM2.Gyarto(
    adoszam INT PRIMARY KEY,
    nev CHAR(30) NOT NULL,
    telephely VARCHAR(30) NOT NULL
);

DROP TABLE IF EXISTS IY5AM2.Termek;
CREATE TABLE IY5AM2.Termek(
    tkod INT PRIMARY KEY,
    nev CHAR(50) NOT NULL,
    ear NUMERIC CHECK(ear > 0) NOT NULL,
    gyarto CHAR(30) NOT NULL,
    FOREIGN KEY(gyarto) REFERENCES IY5AM2.Gyarto(nev)
);
