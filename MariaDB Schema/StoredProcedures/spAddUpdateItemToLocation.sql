CREATE DEFINER=`root`@`%` PROCEDURE `spAddUpdateItemToLocation`(
	IN `strUPC` VARCHAR(50),
	IN `intLocationID` INT
)
LANGUAGE SQL
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN
	SET @intID= (SELECT intID FROM tblItems WHERE strUPC = @strUPC LIMIT 1);
	-- SELECT @intID;
	IF @intID IS NULL THEN
		SELECT 'ITEM NOT FOUND';
	ELSE
		INSERT INTO tblItemLocations(intItemID, intLocationID, intQty)
		VALUES(@intID, intLocationID, 1)
		ON DUPLICATE KEY
		UPDATE intQty = intQty + 1;
		
		SELECT ROW_COUNT();
	END IF;
END