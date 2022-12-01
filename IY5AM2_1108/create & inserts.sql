DROP DATABASE IF EXISTS seminar;
CREATE DATABASE seminar;

DROP TABLE IF EXISTS seminar.tulajdonos;
CREATE TABLE seminar.tulajdonos(
    tkod INT(3) PRIMARY KEY,
    nev VARCHAR(25) NOT NULL,
    varos VARCHAR(20)
);

DROP TABLE IF EXISTS seminar.auto;
CREATE TABLE seminar.auto(
    rendszam CHAR(7) PRIMARY KEY,
    tipus VARCHAR(25) NOT NULL,
    szin VARCHAR(15),
    kor INT(2),
    ar INT(8),
    tulaj INT(3),
    FOREIGN KEY(tulaj) REFERENCES seminar.tulajdonos(tkod) ON DELETE CASCADE
);

INSERT INTO seminar.tulajdonos VALUES( 101, 'Kis János', 'Miskolc' );
INSERT INTO seminar.tulajdonos VALUES( 102, 'Kis Éva', 'Szerencs' );
INSERT INTO seminar.tulajdonos VALUES( 103, 'Retek Ödön', 'Miskolc' );
INSERT INTO seminar.tulajdonos VALUES( 104, 'Virág Zoltán', 'Nyék' );
INSERT INTO seminar.tulajdonos VALUES( 105, 'Nagy Eszter', 'Nyék' );
INSERT INTO seminar.tulajdonos VALUES( 106, 'Kovács Magor', 'Szerencs' );
INSERT INTO seminar.tulajdonos VALUES( 107, 'Asztal Antal', 'Miskolc' );

INSERT INTO seminar.auto VALUES( 'FER-831', 'Opel Corsa', 'Piros', 18, 390, 101 );
INSERT INTO seminar.auto VALUES( 'GDF-525', 'Renault Twingo', 'Fekete', 16, 280, NULL );
INSERT INTO seminar.auto VALUES( 'HUB-936', 'Suzuki Swift', 'Fekete', 16, 500, NULL );
INSERT INTO seminar.auto VALUES( 'IXL-239', 'Suzuki Swift', 'Zöld', 15, 450, 105 );
INSERT INTO seminar.auto VALUES( 'JAH-425', 'Skoda Fabia', 'Piros', 13, 620, 102 );
INSERT INTO seminar.auto VALUES( 'JCD-443', 'Opel Astra', 'Fehér', 12, 990, 107 );
INSERT INTO seminar.auto VALUES( 'KAP-290', 'BMW 316', 'Fekete', 6, 3250, 102 );
INSERT INTO seminar.auto VALUES( 'KFT-204', 'Opel Astra', 'Szürke', 7, 1250, 106 );
INSERT INTO seminar.auto VALUES( 'MLM-211', 'Toyota Yaris', 'Fehér', 3, 1850, 105 );

SELECT tulajdonos.nev, COUNT(rendszam) FROM seminar.auto
JOIN seminar.tulajdonos ON auto.tulaj = tulajdonos.tkod
GROUP BY tulajdonos.nev
HAVING COUNT(rendszam) > 1;