SELECT COUNT(*) AS payment_count
FROM transactions t1
WHERE EXISTS (
    SELECT 1
    FROM transactions t2
    WHERE t2.merchant_id = t1.merchant_id
      AND t2.credit_card_id = t1.credit_card_id
      AND t2.amount = t1.amount
      AND t2.transaction_timestamp < t1.transaction_timestamp
      AND t1.transaction_timestamp <= t2.transaction_timestamp + INTERVAL '10 minutes'
);
