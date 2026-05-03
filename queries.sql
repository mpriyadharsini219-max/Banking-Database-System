-- View all customers with accounts
SELECT c.name, a.account_id, a.account_type, a.balance
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id;

-- Check balance of a customer
SELECT c.name, a.balance
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
WHERE c.name = 'Priya';

-- Deposit money
UPDATE Accounts
SET balance = balance + 2000
WHERE account_id = 101;

-- Withdraw money
UPDATE Accounts
SET balance = balance - 1000
WHERE account_id = 101;

-- Transaction history
SELECT * FROM Transactions
WHERE account_id = 101;

-- Total bank balance
SELECT SUM(balance) AS total_balance FROM Accounts;

-- Customers with high balance
SELECT c.name, a.balance
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
WHERE a.balance > 15000;

-- Number of transactions per account
SELECT account_id, COUNT(*) AS total_transactions
FROM Transactions
GROUP BY account_id;

-- Most active account
SELECT account_id, COUNT(*) AS txn_count
FROM Transactions
GROUP BY account_id
ORDER BY txn_count DESC
LIMIT 1;
