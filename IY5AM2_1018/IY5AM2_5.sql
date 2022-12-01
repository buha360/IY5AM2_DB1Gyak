CREATE TABLE IY5AM2.termekek (
    tkod INT PRIMARY KEY, 
    nev VARCHAR(50) NOT NULL, 
    ear INT CHECK (EAR > 0), 
    kategoria CHAR(20)
);

INSERT INTO IY5AM2.termekek VALUES(1, 'csákánny', 3000, 'K1');
INSERT INTO IY5AM2.termekek VALUES(2, 'fakanál', 500, 'K1');
INSERT INTO IY5AM2.termekek VALUES(3, 'mosogató por', 2500,'K1');
INSERT INTO IY5AM2.termekek VALUES(4, 'bögre', 3000, 'K1');
INSERT INTO IY5AM2.termekek VALUES(5, 'tálca', 1200, 'K1');

INSERT INTO IY5AM2.termekek VALUES(1, 'csákánny', 3000, 'K1');  //már létezik
INSERT INTO IY5AM2.termekek VALUES(2, 'fakanál', 500, 'K1');  //a név nem lehet üres 
INSERT INTO IY5AM2.termekek VALUES(3, 'mosogató por', 2500,'K1');  //az ár nem nagyobb, mint nulla
INSERT INTO IY5AM2.termekek VALUES(4, 'bögre', 3000, 'K1');  //hibás konstans a szövegben
INSERT INTO IY5AM2.termekek VALUES(5, 'tálca', 1200, 'K1');  //hibás konstans a számban