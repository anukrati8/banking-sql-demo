CREATE OR REPLACE FUNCTION update_balance()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.transaction_type = 'Deposit' THEN
         UPDATE Accounts
         SET balance = balance + NEW.amount
         WHERE account_id = NEW.account_id;
     ELSIF NEW.transaction_type = 'Withdrawal' THEN
         UPDATE Accounts
         SET balance = balance - NEW.amount
         WHERE account_id = NEW.account_id;
     END IF;
     RETURN NEW;
 END;
 $$ LANGUAGE plpgsql; 

-- -- Trigger
 CREATE TRIGGER trg_update_balance
 AFTER INSERT ON Transactions
 FOR EACH ROW
EXECUTE FUNCTION update_balance();
