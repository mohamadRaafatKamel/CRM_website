-- ALTER TABLE `request` CHANGE `type` `type` INT(1) NULL DEFAULT '1';

ALTER TABLE `request` ADD COLUMN `fullname` VARCHAR(250) NULL AFTER `user_id`;

ALTER TABLE `service` ADD COLUMN `type` int(1) NULL AFTER `image`;

