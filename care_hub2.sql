ALTER TABLE `orders` ADD COLUMN `expectation_cost` int(20) NULL DEFAULT 0 AFTER `arrive_on`;
ALTER TABLE `orders` ADD COLUMN `real_cost` int(20) NULL DEFAULT 0 AFTER `expectation_cost`;
ALTER TABLE `orders` ADD COLUMN `code_zone_patient_id` VARCHAR(250) NULL AFTER `real_cost`;
ALTER TABLE `orders` ADD COLUMN `symptoms` VARCHAR(250) NULL AFTER `code_zone_patient_id`;


ALTER TABLE `specialty` ADD COLUMN `parent_id` int(20) NULL AFTER `name_en`;
ALTER TABLE `specialty` ADD FOREIGN KEY (`parent_id`) REFERENCES `specialty`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

