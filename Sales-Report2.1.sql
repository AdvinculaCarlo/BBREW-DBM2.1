-- Basic SQL Query
SELECT 
    COUNT(id) AS total_orders,
    SUM(grandtotal) AS total_sales,
    DATE(time_date) AS sale_date
FROM 
    Orders
WHERE 
    time_date BETWEEN '2023-01-01' AND '2023-01-31'  -- Replace with your desired date range
    AND order_status = 'Complete'  -- Only consider completed orders for total sales
GROUP BY 
    DATE(time_date)
ORDER BY 
    sale_date DESC;

-- Add date parameters for search
SELECT 
    COUNT(id) AS total_orders,
    SUM(grandtotal) AS total_sales,
    DATE(time_date) AS sale_date
FROM 
    Orders
WHERE 
    time_date BETWEEN ? AND ?  -- Dynamic date range placeholders
    AND order_status = 'Complete'
GROUP BY 
    DATE(time_date)
ORDER BY 
    sale_date DESC;

-- Detailed Sales Report
SELECT 
    p.name AS product_name,
    c.name AS category_name,
    SUM(oq.qty) AS total_quantity_sold,
    SUM(oq.qty * oq.price_matrix_id) AS total_sales,  -- Adjust as needed for price calculation
    DATE(o.time_date) AS sale_date
FROM 
    Orders o
JOIN 
    OrderQuote oq ON o.id = oq.order_id
JOIN 
    Product p ON oq.product_id = p.id
JOIN 
    Category c ON p.category_id = c.id
WHERE 
    o.time_date BETWEEN '2023-01-01' AND '2023-01-31'  -- Replace with your desired date range
    AND o.order_status = 'Complete'
GROUP BY 
    p.name, c.name, DATE(o.time_date)
ORDER BY 
    sale_date DESC;
