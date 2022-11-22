SELECT
(SELECT COUNT(gender) FROM RS.Customer WHERE gender = 'F') +
(SELECT COUNT(gender) FROM RS.Driver WHERE gender = 'F') +
(SELECT COUNT(gender) FROM RS.AdminA WHERE gender = 'F')
AS Sum_of_females;

-- Kérdezzük le, hogy az adatbázisban mennyi nő szerepel!