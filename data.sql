INSERT INTO Customers VALUES
(1, 'Priya', 'priya@gmail.com', '9876543210'),
(2, 'Rahul', 'rahul@gmail.com', '9123456780'),
(3, 'Anjali', 'anjali@gmail.com', '9988776655');

INSERT INTO Accounts VALUES
(101, 1, 'Savings', 10000),
(102, 2, 'Current', 20000),
(103, 3, 'Savings', 15000);

INSERT INTO Transactions VALUES
(1, 101, 'Deposit', 5000, NOW()),
(2, 101, 'Withdraw', 2000, NOW()),
(3, 102, 'Deposit', 10000, NOW()),
(4, 103, 'Withdraw', 3000, NOW());
