/* -- Category Table (Catalog Table)
CREATE TABLE Category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    status ENUM('active', 'inactive') DEFAULT 'active',
    thumbnail_path VARCHAR(100)
); */
INSERT INTO Category (name)
VALUES
-- 1
('Milk Tea'),
-- 2
('Cold Coffee'),
-- 3
('Hot Coffee'),
-- 4
('Fruit Tea'),
-- 5
('Brosty'),
-- 6
('Praf'),
-- 7
('Premium');

/* -- Product Table
CREATE TABLE Product (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category_id INT,
    thumbnail_path VARCHAR(100),
    status ENUM('active', 'inactive') DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP NULL,
    FOREIGN KEY (category_id) REFERENCES Category(id)
); */
INSERT INTO Product (name, category_id)
VALUES
-- 1 MILK TEA
('MT Dark Choco', 1),
('MT Cookies and Cream', 1),
('MT Okinawa', 1),
('MT Wintermelon', 1),
('MT Cheesecake', 1),
('MT Matcha', 1),
('MT Chocolate', 1),
('MT Red Velvet', 1),
('MT Salted Caramel', 1),
('MT Choco Kisses', 1),
('MT Taro', 1),
('MT Strawberry', 1),
-- 2 COLD COFFEE
('Cold Brusko', 2),
('Cold Mocha', 2),
('Cold Macchiato', 2),
('Cold Vanilla', 2),
('Cold Caramel', 2),
('Cold Fudge', 2),
('Cold Spanish', 2),
-- 3 HOT COFFEE
('Hot Brusko', 3),
('Hot Mocha', 3),
('Hot Macchiato', 3),
('Hot Vanilla', 3),
('Hot Caramel', 3),
('Hot Fudge', 3),
('Hot Spanish', 3),
-- 4 FRUIT TEA
('FT Lychee', 4),
('FT Green Apple', 4),
('FT Blueberry', 4),
('FT Lemon', 4),
('FT Strawberry', 4),
('FT Kiwi', 4),
('FT Mango', 4),
('FT Honey Peach', 4),
-- 5 BROSTY
('B Lychee', 5),
('B Green Apple', 5),
('B Blueberry', 5),
('B Lemon', 5),
('B Strawberry', 5),
('B Kiwi', 5),
('B Mango', 5),
('B Honey Peach', 5),
-- 6 PRAF
('P Java Chip', 6),
('P Cheesecake', 6),
('P Cookies and Cream', 6),
('P Creamy Avocado', 6),
('P Chocolate', 6),
('P Coffee Jelly', 6),
('P Matcha', 6),
('P Caramel Macchiato', 6),
('P Strawberry', 6),
('P Mocha', 6),
('P Taro', 6),
('P Vanilla', 6),
-- 7 PREMIUM
('PR BlackPink', 7),
('PR Kape KMJS', 7),
('PR Super Choco', 7),
('PR Supreme Mocha', 7),
('PR Boss Brew', 7),
('PR Kara-Van', 7),
('PR Cutie Drink', 7),
('PR Choco Berry', 7);

/* -- Price Matrix
CREATE TABLE ProductMatrix (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    medio_price DECIMAL(3, 2) NULL,
    grande_price DECIMAL(3, 2) NULL,
    single_price DECIMAL(3, 2) NULL,
    FOREIGN KEY (product_id) REFERENCES Product(id)
); */
INSERT INTO ProductMatrix (product_id, medio_price, grande_price, single_price)
VALUES
-- 1 MILK TEA
(1, 29.00, 39.00, NULL),
(2, 29.00, 39.00, NULL),
(3, 29.00, 39.00, NULL),
(4, 29.00, 39.00, NULL),
(5, 29.00, 39.00, NULL),
(6, 29.00, 39.00, NULL),
(7, 29.00, 39.00, NULL),
(8, 29.00, 39.00, NULL),
(9, 29.00, 39.00, NULL),
(10, 29.00, 39.00, NULL),
(11, 29.00, 39.00, NULL),
(12, 29.00, 39.00, NULL),
-- 2 COLD COFFEE
(13, 29.00, 39.00, NULL),
(14, 29.00, 39.00, NULL),
(15, 29.00, 39.00, NULL),
(16, 29.00, 39.00, NULL),
(17, 29.00, 39.00, NULL),
(18, 29.00, 39.00, NULL),
(19, 29.00, 39.00, NULL),
-- 3 HOT COFFEE
(20, NULL, NULL, 39.00),
(21, NULL, NULL, 39.00),
(22, NULL, NULL, 39.00),
(23, NULL, NULL, 39.00),
(24, NULL, NULL, 39.00),
(25, NULL, NULL, 39.00),
(26, NULL, NULL, 39.00),
-- 4 FRUIT TEA
(27, 29.00, 39.00, NULL),
(28, 29.00, 39.00, NULL),
(29, 29.00, 39.00, NULL),
(30, 29.00, 39.00, NULL),
(31, 29.00, 39.00, NULL),
(32, 29.00, 39.00, NULL),
(33, 29.00, 39.00, NULL),
(34, 29.00, 39.00, NULL),
-- 5 BROSTY
(35, 49.00, 59.00, NULL),
(36, 49.00, 59.00, NULL),
(37, 49.00, 59.00, NULL),
(38, 49.00, 59.00, NULL),
(39, 49.00, 59.00, NULL),
(40, 49.00, 59.00, NULL),
(41, 49.00, 59.00, NULL),
(42, 49.00, 59.00, NULL),
-- 6 PRAF
(43, 49.00, 59.00, NULL),
(44, 49.00, 59.00, NULL),
(45, 49.00, 59.00, NULL),
(46, 49.00, 59.00, NULL),
(47, 49.00, 59.00, NULL),
(48, 49.00, 59.00, NULL),
(49, 49.00, 59.00, NULL),
(50, 49.00, 59.00, NULL),
(51, 49.00, 59.00, NULL),
(52, 49.00, 59.00, NULL),
(53, 49.00, 59.00, NULL),
(54, 49.00, 59.00, NULL),
-- 7 PREMIUM
(55, NULL, NULL, 66.00),
(56, NULL, NULL, 60.00),
(57, NULL, NULL, 49.00),
(58, NULL, NULL, 52.00),
(59, NULL, NULL, 66.00),
(60, NULL, NULL, 70.00),
(61, NULL, NULL, 48.00),
(62, NULL, NULL, 39.00);
