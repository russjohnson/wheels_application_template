
ALTER TABLE `users` ADD COLUMN `accountid` INT;
ALTER TABLE `users` ADD COLUMN `roles` VARCHAR(255);
CREATE INDEX `users_accountid` ON `users`(`accountid`);
