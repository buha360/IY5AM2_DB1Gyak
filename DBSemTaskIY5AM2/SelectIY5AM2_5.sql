SELECT RS.Customer.first_name AS Customer_firstname, RS.Customer.last_name AS Customer_lastname FROM RS.Customer
JOIN RS.Trans ON Trans.transaction_id = Customer.customer_id
WHERE gender = 'M' AND car_id = 1
ORDER BY Customer.first_name;

-- Kérdezzük le, hogy ki/kik azok a férfi Customerek, akik az 1.es ID-jű autót kérték!