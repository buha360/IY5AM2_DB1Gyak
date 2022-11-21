SELECT RS.Customer.first_name AS Customer_firstname, RS.Customer.last_name AS Customer_lastname,
RS.Driver.first_name AS Driver_firstname, RS.Driver.last_name  AS Driver_lastname FROM RS.Customer
JOIN RS.Trans ON Trans.Customer_id = Customer.customer_id
JOIN RS.Trans_data ON Trans_data.transaction_id = Trans.transaction_id
JOIN RS.Cars ON Cars.car_id = Trans.car_id
JOIN RS.Driver ON Driver.driver_id = Cars.driver_id
WHERE Trans.transaction_date BETWEEN '2022-11-22' AND '2022-12-26' AND Customer.gender = 'F'
ORDER BY RS.Customer.first_name;

-- Kérdezzük le, hogy a női Customerek mely Driverekkel utaztak egy adott időintervallumban!