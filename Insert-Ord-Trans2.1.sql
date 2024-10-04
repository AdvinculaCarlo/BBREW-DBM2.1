-- Order / Transaction data Insertion EXAMPLE

INSERT INTO Orders (order_quotes, customer_name, user_id, subtotal, discounted_value, grandtotal, order_status)
VALUES ('ORD001', 'John Doe', 1, 135.00, 15.00, 120.00, 'Complete');

/* 	order_quotes: Unique identifier for the order (e.g., "ORD001").
	customer_name: Customer’s name ("John Doe").
	user_id: ID of the user (assuming user ID = 1 for this example).
	subtotal: Total cost of the products before discounts (135.00).
	discounted_value: Total discount applied (15.00).
	grandtotal: Total cost after discount (120.00).
	order_status: Set to 'Complete'. */

INSERT INTO OrderQuote (product_id, price_matrix_id, category_id, qty, discount_id)
VALUES
-- Milk Tea (MT Dark Choco) 2 cups of Medium Size
(1, 1, 1, 2, NULL),  

-- Cold Coffee (Cold Mocha) 1 cup of Large Size
(14, 14, 2, 1, NULL),  

-- Premium (PR Kape KMJS) 1 item
(56, 56, 7, 1, NULL);

/* 	product_id: Refers to the product in the Product table.
	price_matrix_id: Refers to the corresponding price in the ProductMatrix table.
	category_id: Refers to the category of the product.
	qty: Quantity purchased.
	discount_id: NULL if no discount is applied. */

