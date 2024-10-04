-- Indexes for Category Table
CREATE INDEX idx_category_name ON Category(name);

-- Indexes for Product Table
CREATE INDEX idx_product_category ON Product(category_id);
CREATE INDEX idx_product_name ON Product(name);

-- Indexes for ProductMatrix Table
CREATE INDEX idx_product_matrix_product ON ProductMatrix(product_id);

-- Indexes for AddOns Table
CREATE INDEX idx_addons_category ON AddOns(category_id);

-- Indexes for User Table
CREATE INDEX idx_user_role ON User(user_role_id);
CREATE INDEX idx_user_name ON User(first_name, last_name);

-- Indexes for Orders Table
CREATE INDEX idx_orders_user ON Orders(user_id);
CREATE INDEX idx_orders_status ON Orders(order_status);

-- Indexes for OrderQuote Table
CREATE INDEX idx_order_quote_product ON OrderQuote(product_id);
CREATE INDEX idx_order_quote_price_matrix ON OrderQuote(price_matrix_id);
CREATE INDEX idx_order_quote_discount ON OrderQuote(discount_id);
