CREATE DEFINER=`root`@`%` PROCEDURE `spLogin`(
	IN `Username_p` VARCHAR(2000),
	IN `Password_p` VARCHAR(2000)
)
LANGUAGE SQL
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN
	SET @ValidLogin = (SELECT COUNT(1) FROM tblUsers WHERE strUsername = Username_p AND strPasswordHash = Password_p);
	
	IF @ValidLogin = 1 THEN
		SET @Token = MD5(Username_p+Password_p+NOW());
		UPDATE tblUsers
		SET strToken = @Token
		WHERE strUsername = Username_p;
		SELECT @ValidLogin, @Token;
	ELSE
		UPDATE tblUsers
		SET strToken = ''
		WHERE strUsername = Username_p;
	END IF;
END