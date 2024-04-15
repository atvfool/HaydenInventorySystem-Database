CREATE DEFINER=`root`@`%` PROCEDURE `spCreateLocation`(
	IN `strName` VARCHAR(50),
	IN `strDescription` VARCHAR(2000),
	IN `intParentLocationID` INT
)
LANGUAGE SQL
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN
	INSERT INTO tblLocations(strName, strDescription, intParentLocationID)
	VALUES(@strName, @strDescription, @intParentLocationID);
END