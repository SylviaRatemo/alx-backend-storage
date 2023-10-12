-- Trigger
-- quatity vs orders
DROP TRIGGER IF EXISTS buy;
DELIMITER //

CREATE TRIGGER buy
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    UPDATE items
        SET quantity = quantity - NEW.number
        WHERE name = NEW.item_name;
END //

DELIMITER ;