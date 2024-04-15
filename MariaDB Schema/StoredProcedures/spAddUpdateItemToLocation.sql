CREATE DEFINER=`root`@`%` PROCEDURE `spAddUpdateItemToLocation`(
	IN `intItemID` INT,
	IN `intLocationID` INT,
	IN `intQty` INT
)
LANGUAGE SQL
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN
	INSERT INTO tblItemLocations(intItemID, intLocationID, intQty)
	VALUES(@intItemID, @intLocationID, @intQty)
	ON DUPLICATE KEY
	UPDATE intQty = @intQty;
END