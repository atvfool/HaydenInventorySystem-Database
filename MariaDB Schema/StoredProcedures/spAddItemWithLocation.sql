CREATE DEFINER=`root`@`%` PROCEDURE `spAddItemWithLocation`(
	IN `intLocationID_p` INT,
	IN `strName_p` INT,
	IN `strDescription_p` INT,
	IN `strUPC_p` INT
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
	
	INSERT INTO tblItemLocations(intItemID, intLocationID, intQty)
	VALUES(LAST_INSERT_ID(), intLocationID_p, 1);
END