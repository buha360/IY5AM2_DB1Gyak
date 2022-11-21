SELECT RS.Customer.first_name AS Customer_firstname, RS.Customer.last_name AS Customer_lastname,
RS.Customer.city AS City, RS.Customer.age AS Age FROM RS.Customer

WHERE gender = 'F' AND city = 'Miskolc' AND age <= 30;

-- Kérdezzül le, hogy van-e olyam személy az adatbázisban, aki nő, miskolci és fiatalabb, mint 30!