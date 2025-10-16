CREATE TABLE Accounts(
  customer_id INT,
  account_id SERIAL PRIMARY KEY,
  account_type VARCHAR(100),
  balance NUMERIC (15,2) DEFAULT 0,
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
