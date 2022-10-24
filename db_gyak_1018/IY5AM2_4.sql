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