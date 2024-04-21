CREATE DEFINER=`root`@`%` PROCEDURE `spAddItemWithLocation`(
	IN `intLocationID` INT,
	IN `strName` INT,
	IN `strDescription` INT,
	IN `strUPC` INT
)
LANGUAGE SQL
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN
	INSERT INTO tblItems(strName, strDescription, strUPC)
	VALUES(strName, strDescription, strUPC);
	
	SELECT LAST_INSERT_ID();
	
	INSERT INTO tblItemLocations(intItemID, intLocationID, intQty)
	VALUES(LAST_INSERT_ID(), intLocationID, 1);
END