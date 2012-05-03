
CREATE TABLE `users` (
 `id` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
 `username` VARCHAR(30),
 `password` VARCHAR(50),
 `email` VARCHAR(100),
 `firstName` VARCHAR(50),
 `lastName` VARCHAR(50),
 `admin` TINYINT(1) DEFAULT 0,
 `activationCode` VARCHAR(255),
 `activatedAt` DATETIME,
 `createdat` DATETIME,
 `updatedat` DATETIME,
 `deletedat` DATETIME
);
