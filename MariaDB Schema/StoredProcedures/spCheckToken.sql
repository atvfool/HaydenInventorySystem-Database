CREATE DEFINER=`root`@`%` PROCEDURE `spCheckToken`(
	IN `Username_p` VARCHAR(2000),
	IN `Token_p` VARCHAR(2000)
)
LANGUAGE SQL
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN
	SET @ValidToken = (SELECT COUNT(1) FROM tblUsers WHERE strUsername = Username_p AND strToken = Token_p);
	IF @ValidToken = 1 THEN
		SELECT "OK";
	ELSE
		SELECT "FAILED";
	END IF;
END