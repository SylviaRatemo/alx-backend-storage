-- create function
-- computations
DROP FUNCTION IF EXISTS SafeDiv;
DELIMITER //

CREATE FUNCTION SafeDiv(a INT, b INT)
RETURNS FLOAT
READS SQL DATA
BEGIN
    DECLARE result FLOAT;
    SET result = IF (b = 0, 0, a / b);
    RETURN result;
END //

DELIMITER ;