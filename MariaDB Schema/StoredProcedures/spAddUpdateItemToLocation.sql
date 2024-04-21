CREATE DEFINER=`root`@`%` PROCEDURE `spAddUpdateItemToLocation`(
	IN `strUPC_p` VARCHAR(50),
	IN `intLocationID_p` INT
)
LANGUAGE SQL
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN
	SET @intID= (SELECT intID FROM tblItems WHERE strUPC = strUPC_p LIMIT 1);
	-- SELECT @intID;
	IF @intID IS NULL THEN
		SELECT 'ITEM NOT FOUND';
	ELSE
		INSERT INTO tblItemLocations(intItemID, intLocationID, intQty)
		VALUES(@intID, intLocationID_p, 1)
		ON DUPLICATE KEY
		UPDATE intQty = intQty + 1;
		
		SELECT ROW_COUNT();
	END IF;
END