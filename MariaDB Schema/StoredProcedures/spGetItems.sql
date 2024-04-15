CREATE DEFINER=`root`@`%` PROCEDURE `spGetItems`()
LANGUAGE SQL
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN
	SELECT i.intID, 
			 i.strName, 
			 i.strDescription, 
			 i.intTypeID,
			 t.strName TypeName,
			 i.decPrice, 
			 i.strUPC,
			 COUNT(l.intLocationID) LocationCount,
			 SUM(l.intQty) TotalQty
	FROM tblItems i
	LEFT JOIN tblItemTypes t ON i.intTypeID = t.intID
	LEFT JOIN tblItemLocations l ON i.intID = l.intItemID
	GROUP BY i.intID, 
			 i.strName, 
			 i.strDescription, 
			 i.intTypeID,
			 t.strName,
			 i.decPrice, 
			 i.strUPC
	
	;
END