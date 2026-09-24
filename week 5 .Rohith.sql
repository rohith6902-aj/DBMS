USE STYLEHUB;

CREATE TABLE Payment
(
    PaymentID INT PRIMARY KEY,
    OrderID INT,
    PaymentMode VARCHAR(20),
    PaymentDate DATE,
    PaymentAmount DECIMAL(10,2),
    PaymentStatus VARCHAR(20)
);

INSERT INTO Payment VALUES
(601, 401, 'UPI', '2026-09-01', 3500.00, 'Successful'),
(602, 402, 'Card', '2026-09-02', 1000.00, 'Successful'),
(603, 403, 'Cash', '2026-09-03', 2600.00, 'Failed'),
(604, 404, 'UPI', '2026-09-04', 1400.00, 'Successful'),
(605, 405, 'Card', '2026-09-05', 2000.00, 'Successful'),
(606, 406, 'Cash', '2026-09-06', 3800.00, 'Failed'),
(607, 407, 'UPI', '2026-09-07', 2800.00, 'Successful'),
(608, 408, 'Card', '2026-09-08', 3100.00, 'Successful'),
(609, 409, 'Cash', '2026-09-09', 2200.00, 'Successful'),
(610, 410, 'UPI', '2026-09-10', 2500.00, 'Failed');

SELECT * FROM Payment;

UPDATE Payment
SET PaymentStatus = 'Successful'
WHERE PaymentID = 603;

SELECT * FROM Payment
WHERE PaymentStatus = 'Successful';

SELECT * FROM Payment
WHERE PaymentStatus = 'Failed';

SELECT * FROM Payment
WHERE PaymentMode = 'UPI';

SELECT * FROM Payment
WHERE PaymentMode = 'Card';

SELECT * FROM Payment
WHERE PaymentMode = 'Cash';

SELECT PaymentMode, COUNT(*) AS No_Of_Transactions
FROM Payment
GROUP BY PaymentMode;

SELECT PaymentMode, SUM(PaymentAmount) AS Total_Amount_Received
FROM Payment
WHERE PaymentStatus = 'Successful'
GROUP BY PaymentMode;