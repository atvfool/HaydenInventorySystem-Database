CREATE DEFINER=`root`@`%` PROCEDURE `spRemoveItemFromLocation`(
	IN `strUPC_p` VARCHAR(50),
	IN `intLocationID_p` INT
)
LANGUAGE SQL
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN
	SET @qtyInLocation = (SELECT SUM(il.intQty) 
								 FROM tblItemLocations il
								 INNER JOIN tblItems i ON il.intItemID = i.intID
								 WHERE i.strUPC = strUPC_p AND il.intLocationID = intLocationID_p);
	IF @qtyInLocation >= 2 THEN
		UPDATE tblItemLocations il
		INNER JOIN tblItems i ON il.intItemID = i.intID
		SET il.intQty = il.intQty-1
		WHERE i.strUPC = strUPC_p AND il.intLocationID = intLocationID_p;
	ELSE
		DELETE il
		FROM tblItemLocations il
		INNER JOIN tblItems i ON il.intItemID = i.intID
		WHERE i.strUPC = strUPC_p AND il.intLocationID = intLocationID_p	;
	END IF;
	
	SELECT ROW_COUNT();
END