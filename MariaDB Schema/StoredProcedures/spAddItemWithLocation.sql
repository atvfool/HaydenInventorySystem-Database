CREATE DEFINER=`root`@`%` PROCEDURE `spAddItemWithLocation`(
	IN `intLocationID_p` INT,
	IN `strName_p` VARCHAR(50),
	IN `strDescription_p` VARCHAR(2000),
	IN `strUPC_p` VARCHAR(50),
	IN `intQty_p` INT
)
LANGUAGE SQL
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN
	INSERT INTO tblItems(strName, strDescription, strUPC)
	VALUES(strName_p, strDescription_p, strUPC_p);
	
	SELECT LAST_INSERT_ID();
	
	SET @intQty = 1;
	
	IF intQty_p IS NOT NULL THEN
		SET @intQty = intQty_p;
	END IF;
		
	
	INSERT INTO tblItemLocations(intItemID, intLocationID, intQty)
	VALUES(LAST_INSERT_ID(), intLocationID_p, @intQty);
END