SELECT RS.AdminA.first_name AS Admin_firstname, RS.AdminA.last_name AS Admin_lastname,
RS.Trans.transaction_id AS Transaction_id FROM RS.AdminA

JOIN RS.Approving ON Approving.AdminA_id = AdminA.AdminA_id
JOIN RS.Trans ON Trans.transaction_id = Approving.transaction_id
WHERE Approving.verification_date BETWEEN '2022-11-25' AND '2022-12-28'
ORDER BY Trans.transaction_id;

-- Kérdezzük le, hogy egy adott időintervallumon belül az adminok mely tranzakciókat hitelesítették!