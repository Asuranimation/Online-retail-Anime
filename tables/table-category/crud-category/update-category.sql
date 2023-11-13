SET @update_category = 'Benda';
SET @where_id = 11;

UPDATE category
SET name_category = @update_category
WHERE id = @where_id;