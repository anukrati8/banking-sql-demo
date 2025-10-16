WITH suspicious AS (
    SELECT account_id, SUM(amount) AS total_amount, DATE(transaction_date) AS txn_date
    FROM Transactions
    WHERE transaction_type = 'Deposit'
    GROUP BY account_id, txn_date
    HAVING SUM(amount) > 50000
)
SELECT s.account_id, c.customer_name, s.txn_date, s.total_amount
FROM suspicious s
JOIN Accounts a ON s.account_id = a.account_id
JOIN Customers c ON a.customer_id = c.customer_id;
