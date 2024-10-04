-- Category Table (Catalog Table)
CREATE TABLE Category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    status ENUM('active', 'inactive') DEFAULT 'active',
    thumbnail_path VARCHAR(100) NULL
);

-- Product Table
CREATE TABLE Product (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category_id INT,
    thumbnail_path VARCHAR(100) NULL,
    status ENUM('active', 'inactive') DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP NULL,
    FOREIGN KEY (category_id) REFERENCES Category(id)
);

-- Price Matrix
CREATE TABLE ProductMatrix (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    medio_price DECIMAL(10, 2) NULL,
    grande_price DECIMAL(10, 2) NULL,
    single_price DECIMAL(10, 2) NULL,
    FOREIGN KEY (product_id) REFERENCES Product(id)
);

-- Add-Ons
CREATE TABLE AddOns (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category_id INT,
    price DECIMAL(10, 2) NOT NULL,
    thumbnail_path VARCHAR(100) NULL,
    status ENUM('active', 'inactive') DEFAULT 'active',
    FOREIGN KEY (category_id) REFERENCES Category(id)
);