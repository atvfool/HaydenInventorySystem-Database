CREATE DEFINER=`root`@`%` PROCEDURE `spCreateItem`(
	IN `strName` VARCHAR(50),
	IN `strDescription` VARCHAR(2000),
	IN `strUPC` VARCHAR(20),
	IN `decPrice` DECIMAL(24,2),
	IN `intTypeID` INT
)
LANGUAGE SQL
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN
	INSERT INTO tblItems(strName, strDescription, decPrice, strUPC, intTypeID)
	VALUES(@strName, @strDescription, @decPrice, @strUPC, @intTypeID);
END