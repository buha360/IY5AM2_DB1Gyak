SELECT RS.Driver.first_name AS Driver_firstname, RS.Driver.last_name AS Driver_lastname, RS.Driver.city as City,
RS.Driver.phone_number AS Phone_number, RS.Cars.model AS Car FROM RS.Driver

JOIN RS.Cars ON RS.Cars.driver_id = RS.Driver.driver_id
WHERE Cars.car_status = 'A'
ORDER BY Driver.first_name;

-- Kérdezzük le a rendszerben lévő sofőrök neveit, hozzájuk tartozó telefonszámaikat, autó modelleket, elérhető-e az autó és melyik városban tartózkodnak!