CREATE DEFINER=`root`@`%` PROCEDURE `spGetLocations`()
LANGUAGE SQL
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN
	SELECT intID, strName, strDescription
	FROM tblLocations;
END