CREATE DATABASE IF NOT EXISTS Products;
USE Products;
CREATE TABLE IF NOT EXISTS Shopping_List (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Product_Name VARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Quantity INT NOT NULL
);
INSERT INTO Shopping_List (Product_Name, Price, Quantity) VALUES
    ('Donuts', 10.99, 5),
    ('Apples', 5.49, 3),
    ('Pineapples', 2.99, 10),
    ('Cherry', 3.99, 10),
    ('Chokolate', 5.99, 10),
    ('Potato', 1.99, 10),
    ('Spaghetty', 1.99, 10),
    ('Pear', 2.55, 50),
    ('Orange', 5.66, 40),
    ('Cucumber', 8.00, 2);
    
CREATE TABLE IF NOT EXISTS Fridge (
    Item_ID INT AUTO_INCREMENT PRIMARY KEY,
    Product_ID INT,
    Product_Name VARCHAR(255) NOT NULL,
    Quantity INT NOT NULL,
    Expiration_Date DATE
);

INSERT INTO Fridge (Product_ID, Product_Name, Quantity, Expiration_Date) VALUES
    (1, 'Banana', 3, '2023-09-01'),
    (2, 'Pomegranate', 2, '2023-08-25'),
    (3, 'coconut', 2, '2023-08-25'),
    (4, 'lemon', 2, '2023-08-25'),
    (5,'Donuts', 10.99, '2023-06-25'),
    (6,'Apples', 5.49, '2023-06-25'),
    (7,'Pineapples', 2.99, '2023-06-20'),
    (8,'Cherry', 3.99, '2023-06-15'),
    (9,'Chokolate', 5.99, '2023-08-18'),
    (10, 'melon', 1, '2023-08-28');
    
    UPDATE Fridge
JOIN Shopping_List ON Fridge.Product_Name = Shopping_List.Product_Name
SET Fridge.Product_ID = Shopping_List.ID;