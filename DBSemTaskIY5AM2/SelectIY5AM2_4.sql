SELECT RS.Cars.model AS Model FROM RS.Cars
GROUP BY rent_price
HAVING RS.Cars.rent_price > (SELECT AVG(RS.Cars.rent_price) from RS.Cars);

-- Kérdezzük le mennyi olyan autó van, amellyek drágábban a kocsik átlag áránál!