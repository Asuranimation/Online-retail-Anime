SET @update_name = 'asyura';
SET @update_email = 'asyura@gmail.com';
SET @update_phone = '+123 456 789';
SET @update_address = 'Konoha';
SET @where_id = 11;

UPDATE customer
SET 
name_customer = @update_name,
email = @update_email,
no_phone = @update_phone,
address = @update_address
WHERE id = @where_id;