INSERT INTO Transactions (transaction_id, account_id, amount, transaction_type, transaction_date)
VALUES
-- Transactions for account 101
(1001, 101, 20000, 'Deposit', '2025-10-01 10:00:00'),
(1002, 101, 5000, 'Withdrawal', '2025-10-03 15:00:00'),
(1003, 101, 7000, 'Deposit', '2025-10-05 11:00:00'),

-- Transactions for account 102
(1004, 102, 30000, 'Deposit', '2025-10-02 12:00:00'),
(1005, 102, 10000, 'Withdrawal', '2025-10-04 14:00:00'),

-- Transactions for account 103
(1006, 103, 15000, 'Deposit', '2025-10-03 09:30:00'),
(1007, 103, 5000, 'Withdrawal', '2025-10-06 12:00:00'),

-- Transactions for account 104
(1008, 104, 40000, 'Deposit', '2025-10-04 16:00:00'),
(1009, 104, 10000, 'Withdrawal', '2025-10-07 10:00:00'),

-- Transactions for account 105
(1010, 105, 50000, 'Deposit', '2025-10-01 13:00:00'),
(1011, 105, 20000, 'Withdrawal', '2025-10-03 11:00:00'),

-- Transactions for account 106
(1012, 106, 10000, 'Deposit', '2025-10-02 09:00:00'),
(1013, 106, 5000, 'Withdrawal', '2025-10-05 15:00:00'),

-- Transactions for account 107
(1014, 107, 25000, 'Deposit', '2025-10-03 14:00:00'),
(1015, 107, 10000, 'Withdrawal', '2025-10-06 16:00:00'),

-- Transactions for account 108
(1016, 108, 15000, 'Deposit', '2025-10-01 10:30:00'),
(1017, 108, 5000, 'Withdrawal', '2025-10-04 12:00:00'),

-- Transactions for account 109
(1018, 109, 60000, 'Deposit', '2025-10-02 11:30:00'),
(1019, 109, 40000, 'Withdrawal', '2025-10-05 14:30:00'),

-- Transactions for account 110
(1020, 110, 20000, 'Deposit', '2025-10-03 09:00:00'),
(1021, 110, 10000, 'Withdrawal', '2025-10-06 13:00:00');
