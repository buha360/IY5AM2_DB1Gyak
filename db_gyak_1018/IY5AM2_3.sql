CREATE TABLE IY5AM2.Tanfolyam(
    tkod NUMBER PRIMARY KEY, 
    ar INT, 
    tipus VARCHAR(30), 
    megnevezes VARCHAR(30)
);

CREATE TABLE IY5AM2.Résztvevő(
    tajszám NUMBER PRIMARY KEY, 
    név VARCHAR(20),
    lakcim VARCHAR(40)
);

CREATE TABLE IY5AM2.Részvétel(
    tanKod NUMBER, 
    reszKod NUMBER, 
    befizetés NUMBER(10), 
    FOREIGN KEY(tanKod) REFERENCES IY5AM2.Tanfolyam(tkod), 
    FOREIGN KEY(reszKod) REFERENCES IY5AM2.Résztvevő(tajszám)
);