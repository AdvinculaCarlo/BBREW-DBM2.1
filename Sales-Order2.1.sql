-- Discounts
CREATE TABLE Discount (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    is_fixed TINYINT(1) NOT NULL, -- 0 for percent, 1 for fixed amount
    value DECIMAL(10, 2) NOT NULL
);

-- Orders
CREATE TABLE Orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_quotes VARCHAR(100) NOT NULL,
    customer_name VARCHAR(50) NOT NULL,
    user_id INT,
    subtotal DECIMAL(10, 2) NOT NULL,
    discounted_value DECIMAL(10, 2),
    grandtotal DECIMAL(10, 2) NOT NULL,
    order_status ENUM('Cancelled', 'Complete', 'Processing', 'Pending') DEFAULT 'Pending',
    time_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES User(id)
);

-- Invoices
CREATE TABLE Invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    order_quote_id VARCHAR(100),
    type_of_billing VARCHAR(100),
    tender_amount DECIMAL(10, 2) NOT NULL,
    time_date TIMESTAMP,
    FOREIGN KEY (order_id) REFERENCES Orders(id)
);

-- Order Quotes
CREATE TABLE OrderQuote (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    price_matrix_id INT,
    category_id INT,
    qty INT NOT NULL,
    discount_id INT,
    FOREIGN KEY (product_id) REFERENCES Product(id),
    FOREIGN KEY (price_matrix_id) REFERENCES ProductMatrix(id),
    FOREIGN KEY (category_id) REFERENCES Category(id),
    FOREIGN KEY (discount_id) REFERENCES Discount(id)
);