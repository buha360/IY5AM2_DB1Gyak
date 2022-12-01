SELECT COUNT(RS.Trans_data.transaction_data) AS Payed_with_card FROM RS.Trans_data
JOIN RS.Trans ON Trans.transaction_id = Trans_data.transaction_id
WHERE Trans_data.transaction_data = 'CASH';

-- Kérdezzük le, hogy mennyien fizetek CASH-el!