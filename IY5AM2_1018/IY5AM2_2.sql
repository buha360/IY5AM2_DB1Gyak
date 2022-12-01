CREATE TABLE IY5AM2.GYARTO(
    adoszam INT PRIMARY KEY, 
    nev VARCHAR(30) NOT NULL, 
    telephely VARCHAR(30), 
    irsz VARCHAR(4), 
    varos VARCHAR(40), 
    utca VARCHAR(100)
);

CREATE TABLE IY5AM2.TERMEK(
    tkod INT PRIMARY KEY, 
    nev VARCHAR(50), 
    ear NUMERIC CHECK(ear>0), 
    gyarto INT, 
    FOREIGN KEY(gyarto) REFERENCES IY5AM2.GYARTO(nev)
);

CREATE TABLE IY5AM2.Egysegek(
    aru NUMERIC, 
    FOREIGN KEY(aru) REFERENCES IY5AM2.TERMEK(tkod),
    db NUMERIC CHECK(db>0)
);

CREATE TABLE IY5AM2.Komponens(
    termek NUMERIC, 
    alkatresz NUMERIC, 
    FOREIGN KEY(termek) REFERENCES IY5AM2.TERMEK(tkod), 
    FOREIGN KEY(alkatresz) REFERENCES IY5AM2.Alkatresz(akod)
);

CREATE TABLE IY5AM2.Alkatresz(
    akod NUMERIC PRIMARY KEY, 
    nev VARCHAR(50)
);