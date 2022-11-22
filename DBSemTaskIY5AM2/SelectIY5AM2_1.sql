SELECT LEFT(RS.Cars.car_number, 1) AS First_letter, COUNT(*) AS total FROM RS.Cars
GROUP BY First_letter;

-- Kérdezzük le, hogy hány olyan rendszám van, amellyeknek a kezdőbetűi megegyeznek!