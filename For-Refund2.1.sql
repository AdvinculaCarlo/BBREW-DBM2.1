CREATE TABLE Refund (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    refunded_amount DECIMAL(10, 2) NOT NULL,
    reason VARCHAR(255),
    status ENUM('Pending', 'Processed', 'Rejected') DEFAULT 'Pending',
    refund_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (order_id) REFERENCES Orders(id) ON DELETE CASCADE
);

-- Variables
SET @order_id = <your_order_id>;
SET @refund_amount = <your_refund_amount>;
SET @refund_reason = '<your_refund_reason>';

-- Insert into Refund Table
INSERT INTO Refund (order_id, refunded_amount, reason)
VALUES (@order_id, @refund_amount, @refund_reason);

-- Update the Order's grandtotal (optional)
UPDATE Orders 
SET grandtotal = grandtotal - @refund_amount 
WHERE id = @order_id;

-- Optionally adjust inventory for the products in the order
UPDATE ProductMatrix pm
JOIN OrderQuote oq ON pm.id = oq.price_matrix_id
SET pm.single_price = pm.single_price + oq.qty -- Assuming this is how to adjust the quantity
WHERE oq.order_id = @order_id;

UPDATE Refund
SET status = 'Processed'
WHERE id = <refund_id>;

