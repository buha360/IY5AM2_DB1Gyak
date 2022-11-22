SELECT RS.Customer.first_name AS Customer_firstname, RS.Customer.last_name AS Customer_lastname,
RS.Trans.transaction_id AS Transaction_id, RS.Trans_data.transaction_data AS Pay_method FROM RS.Trans

JOIN RS.Customer ON Customer.customer_id = Trans.transaction_id
JOIN RS.Trans_data ON Trans_data.transaction_id = Trans.transaction_id
WHERE transaction_date = '2022-11-25'
ORDER BY Customer.first_name;

-- Kérdezzük le, hogy ki/kik azok a Customerek, akik az alábbi (2022-11-25) napon tranzakciót hajtottak végre és a fizetési módjukat!