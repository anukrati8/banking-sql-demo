SELECT 
    a.account_id,
    DATE_TRUNC('month', t.transaction_date) AS month,
    COUNT(*) AS transaction_count,
    SUM(CASE WHEN t.transaction_type='Deposit' THEN t.amount ELSE 0 END) AS total_deposit,
    SUM(CASE WHEN t.transaction_type='Withdrawal' THEN t.amount ELSE 0 END) AS total_withdrawal
FROM Accounts a
JOIN Transactions t ON a.account_id = t.account_id
GROUP BY a.account_id, month
ORDER BY a.account_id, month;
