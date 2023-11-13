-- Case 1
-- 1 pelanggan membeli 3 barang yang berbeda.

SET @product = 8;
SET @customer = 2;

SET @amount = 4;

SELECT @current_stock:= stock FROM products WHERE id = @product;

SET @new_stock:= @current_stock - @amount;

SELECT @price:= price FROM products WHERE id = @product;

SET @total_price = @price * @amount;

INSERT INTO orders
(amount, total_price, customer_id, product_id)
VALUES
(@amount, @total_price, @customer, @product);

UPDATE products SET stock = @new_stock WHERE id = @product;