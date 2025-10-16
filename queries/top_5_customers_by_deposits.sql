SELECT 
    c.customer_id,
    c.customer_name,
    SUM(t.amount) AS total_deposits
FROM 
    Customers c
JOIN 
    Accounts a ON c.customer_id = a.customer_id
JOIN 
    Transactions t ON a.account_id = t.account_id
WHERE 
    t.transaction_type = 'Deposit'
GROUP BY 
    c.customer_id, c.customer_name
ORDER BY 
    total_deposits DESC
LIMIT 5;
