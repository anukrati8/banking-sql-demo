# Banking System Database Project

## Project Overview
This project simulates a small bank’s database using **PostgreSQL**. It manages **customers, accounts, and transactions** while demonstrating key SQL concepts such as **joins, aggregates, date functions, triggers, and CTEs**.  

## Tables

### 1. Customers
Stores information about bank customers.

| Column       | Data Type     | Description             |
|--------------|--------------|------------------------|
| customer_id  | SERIAL       | Primary Key            |
| customer_name| VARCHAR(100) | Customer's full name   |
| email        | VARCHAR(100) | Unique email address   |
| address      | TEXT         | Customer address       |
| phone        | VARCHAR(15)  | Customer phone number  |

### 2. Accounts
Stores account details linked to customers.

| Column       | Data Type     | Description                  |
|--------------|--------------|------------------------------|
| account_id   | SERIAL       | Primary Key                 |
| customer_id  | INT          | Foreign Key → Customers     |
| account_type | VARCHAR(20)  | e.g., Savings, Current      |
| balance      | NUMERIC(15,2)| Account balance             |

### 3. Transactions
Tracks deposits and withdrawals for accounts.

| Column           | Data Type    | Description                |
|------------------|------------|----------------------------|
| transaction_id   | SERIAL     | Primary Key                |
| account_id       | INT        | Foreign Key → Accounts     |
| amount           | NUMERIC(15,2)| Transaction amount       |
| transaction_type | VARCHAR(10)| Deposit or Withdrawal      |
| transaction_date | TIMESTAMP  | Date and time of transaction |

## Features & Skills Demonstrated
- **Joins:** Linking Customers → Accounts → Transactions  
- **Aggregates:** SUM, COUNT, GROUP BY  
- **Date Functions:** Monthly summaries using DATE_TRUNC  
- **Conditional Aggregation:** Separate deposit and withdrawal totals  
- **Triggers:** Auto-update account balances after transactions  
- **CTEs:** Detect suspicious transactions exceeding ₹1 lakh/day  
- **Filtering & Sorting:** WHERE, ORDER BY, LIMIT  


**ER Diagram**
+-----------------+      1     +-----------------+      1     +---------------------+
|   Customers     |------------>|     Accounts    |------------>|    Transactions     |
+-----------------+            +-----------------+            +---------------------+
| customer_id PK  |            | account_id PK    |            | transaction_id PK    |
| customer_name            |   | customer_id FK   |            | account_id FK        |
| email           |            | account_type     |            | amount              |
| address         |            | balance          |            | transaction_type    |
| phone           |            +-----------------+            | transaction_date    |
+-----------------+                                              +-----------------+

Relationships:
Customers → Accounts: One-to-Many (1 customer can have multiple accounts)
Accounts → Transactions: One-to-Many (1 account can have multiple transactions)
