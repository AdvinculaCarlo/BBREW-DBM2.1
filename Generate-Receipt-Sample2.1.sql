-- Example Variables
SET @order_id = <your_order_id>; -- Replace with the specific order ID

-- Query to generate receipt information
SELECT 
    o.id AS order_id,
    o.customer_name,
    o.time_date AS order_date,
    p.name AS product_name,
    oq.qty,
    (p.price * oq.qty) AS item_total,
    d.value AS discount_value,
    o.discounted_value,
    o.grandtotal
FROM 
    Orders o
JOIN 
    OrderQuote oq ON o.id = oq.order_id
JOIN 
    Product p ON oq.product_id = p.id
LEFT JOIN 
    Discount d ON oq.discount_id = d.id
WHERE 
    o.id = @order_id;

/*
SAMPLE FORMAT
------------------------------------------
			BigBrew (Sta. Mesa Branch)
Add: Old Sta. Mesa, Manila
Contact Info: 09991234567
------------------------------------------
Receipt Date: [2024-10-04]
Order ID: [1]
Customer Name: [KORNELYO]

------------------------------------------
Items Purchased:
------------------------------------------
| Product Name        | Quantity | Price | Total    |
|---------------------|----------|-------|----------|
| MT Wintermelon      | 2        | 29.00 |  58.00   |
| MT Dark Choco       | 1        | 39.00 |  39.00   |
------------------------------------------
Subtotal:             97.00
Discount:             -11.64
Total:                85.36
------------------------------------------
Thank you!
------------------------------------------
*/
