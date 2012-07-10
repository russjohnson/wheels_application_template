
CREATE TABLE `accounts` (
 `id` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
 `name` VARCHAR(30) NOT NULL,
 `userid` INT,
 `createdat` DATETIME,
 `updatedat` DATETIME,
 `deletedat` DATETIME
);
CREATE UNIQUE INDEX `accounts_name` ON `accounts`(`name`);
