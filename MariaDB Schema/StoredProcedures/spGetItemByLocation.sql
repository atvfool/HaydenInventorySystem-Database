CREATE DEFINER=`root`@`%` PROCEDURE `spGetItemByLocation`(
	IN `strUPC` VARCHAR(50),
	IN `intLocationID` INT
)
LANGUAGE SQL
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN
	SELECT i.intID
			,i.strName
			,i.strDescription
			,il.intLocationID
			,il.intQty
	FROM tblItems i
	INNER JOIN tblItemLocations il ON i.intID = il.intItemID
	WHERE i.strUPC = strUPC
	 AND il.intLocationID = intLocationID
	;
END