CREATE DEFINER=`root`@`%` PROCEDURE `spGetLocationByID`(
	IN `intLocationID` INT
)
LANGUAGE SQL
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN
	SELECT intID, strName, strDescription, intParentLocationID
	FROM `tblLocations`
	WHERE intID = intLocationID;
END