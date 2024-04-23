CREATE TABLE `tblUsers` (
	`intID` INT(11) NOT NULL AUTO_INCREMENT,
	`strUsername` VARCHAR(50) NOT NULL DEFAULT '0' COLLATE 'utf8mb4_general_ci',
	`strPasswordHash` VARCHAR(255) NOT NULL DEFAULT '0' COLLATE 'utf8mb4_general_ci',
	`blnActive` BIT(1) NOT NULL DEFAULT b'1',
	`strToken` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	PRIMARY KEY (`intID`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=2
;
