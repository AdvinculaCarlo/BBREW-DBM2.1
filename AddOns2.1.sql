/* -- Add-Ons
CREATE TABLE AddOns (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category_id INT,
    price DECIMAL(10, 2) NOT NULL,
    thumbnail_path VARCHAR(100) NULL,
    status ENUM('active', 'inactive') DEFAULT 'active',
    FOREIGN KEY (category_id) REFERENCES Category(id)
); */

INSERT INTO AddOns (name, price)
VALUES
('Pearl', 9.00),
('Crystal', 9.00),
('Cream Cheese', 9.00),
('Cream Puff', 9.00),
('Cheesecake', 9.00),
('Crushed Oreo', 9.00),
('Coffee Jelly', 9.00),
('Whipped Cream', 9.00);