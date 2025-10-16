CREATE TABLE Transactions (
  transaction_id INT PRIMARY KEY,
  account_id INT,
  amount NUMERIC (15,2),
  transaction_type VARCHAR (10),
  transaction_date TIMESTAMP DEFAULT NOW(),
  FOREIGN KEY (account_id) REFERENCES Accounts(account_id)
);
