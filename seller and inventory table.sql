USE STYLEHUB;

CREATE TABLE Seller
(
    SellerID INT PRIMARY KEY,
    SellerName VARCHAR(100),
    Phone VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(200)
);

CREATE TABLE Inventory
(
    InventoryID INT PRIMARY KEY,
    ProductID INT,
    SellerID INT,
    Quantity INT,
    LastUpdated DATE,

    FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    FOREIGN KEY (SellerID) REFERENCES Seller(SellerID)
);

INSERT INTO Seller VALUES
(201, 'FASHION WORLD', '9876543210', 'fashionworld@gmail.com', 'CHENNAI'),
(202, 'STYLE MART', '9876543211', 'stylemart@gmail.com', 'COIMBATORE'),
(203, 'DENIM HOUSE', '9876543212', 'denimhouse@gmail.com', 'MADURAI'),
(204, 'SHOE ZONE', '9876543213', 'shoezone@gmail.com', 'TRICHY'),
(205, 'TRENDY ACCESSORIES', '9876543214', 'trendy@gmail.com', 'PUDUKKOTTAI');

SELECT * FROM Seller;

INSERT INTO Inventory VALUES
(301, 101, 201, 35, '2026-08-31'),
(302, 102, 201, 25, '2026-08-31'),
(303, 103, 202, 20, '2026-08-31'),

(304, 104, 202, 30, '2026-08-31'),
(305, 105, 202, 35, '2026-08-31'),
(306, 106, 203, 25, '2026-08-31'),

(307, 107, 203, 20, '2026-08-31'),
(308, 109, 203, 20, '2026-08-31'),

(309, 110, 204, 25, '2026-08-31'),
(310, 111, 204, 30, '2026-08-31'),
(311, 112, 204, 25, '2026-08-31'),

(312, 113, 204, 20, '2026-08-31'),
(313, 114, 204, 25, '2026-08-31'),
(314, 115, 204, 15, '2026-08-31');

SELECT * FROM Inventory;

