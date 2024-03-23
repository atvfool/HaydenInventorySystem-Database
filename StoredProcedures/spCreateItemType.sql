CREATE DEFINER=`root`@`%` PROCEDURE `spCreateItemType`(
	IN `strName` VARCHAR(50),
	IN `strDescription` VARCHAR(2000),
	IN `intParentTypeID` INT
)
LANGUAGE SQL
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN
	INSERT INTO tblItemTypes(strName, strDescription, intParentTypeID)
	VALUES(@strName, @strDescription, @intParentTypeID);
END