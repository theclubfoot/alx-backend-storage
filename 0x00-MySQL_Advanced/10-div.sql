-- script that creates a function SafeDiv that divides (and returns) the
-- first by the second number or returns 0 if the second number is equal to 0
-- by phils

DROP FUNCTION IF EXISTS SafeDiv;

DELIMITER //

CREATE FUNCTION SafeDiv (a INT, b INT)
RETURNS FLOAT DETERMINISTIC
BEGIN
  DECLARE num FLOAT DEFAULT 0;

  IF b != 0 THEN
    SET num = a / b;
  END IF;
  RETURN num;
END //
