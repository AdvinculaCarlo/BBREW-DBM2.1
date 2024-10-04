-- Example Variables
SET @order_id = <your_order_id>;
SET @discount_rate = 0.12;  -- 12% discount

-- Step 1: Get the subtotal for the specified order
SET @subtotal = (
    SELECT SUM(p.price * oq.qty)
    FROM OrderQuote oq
    JOIN Product p ON oq.product_id = p.id
    WHERE oq.order_id = @order_id
);

-- Step 2: Calculate the discount value
SET @discount_value = @subtotal * @discount_rate;

-- Step 3: Calculate the grand total after discount
SET @grandtotal = @subtotal - @discount_value;

-- Step 4: Update the Orders table
UPDATE Orders 
SET 
    discounted_value = @discount_value, 
    grandtotal = @grandtotal 
WHERE id = @order_id;
