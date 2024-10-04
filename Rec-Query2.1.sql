-- SQL Query to display the receipt details
SELECT 
    o.order_quotes AS 'Order Number',
    o.customer_name AS 'Customer Name',
    p.name AS 'Product',
    CASE
        WHEN pm.medio_price IS NOT NULL THEN 'Medium'
        WHEN pm.grande_price IS NOT NULL THEN 'Large'
        ELSE 'Single Size'
    END AS 'Size',
    oq.qty AS 'Quantity',
    COALESCE(pm.medio_price, pm.grande_price, pm.single_price) AS 'Price',
    (oq.qty * COALESCE(pm.medio_price, pm.grande_price, pm.single_price)) AS 'Total',
    o.subtotal AS 'Subtotal',
    o.discounted_value AS 'Discount',
    o.grandtotal AS 'Grand Total',
    o.order_status AS 'Order Status',
    o.time_date AS 'Date'
FROM Orders o
JOIN OrderQuote oq ON o.id = oq.id
JOIN Product p ON oq.product_id = p.id
JOIN ProductMatrix pm ON oq.price_matrix_id = pm.id

WHERE o.order_quotes = 'OR00001';  -- You can change this to the specific order number =)
