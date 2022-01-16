ALTER TABLE `service` CHANGE `name_en` `description` VARCHAR(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL;
ALTER TABLE `service` DROP INDEX `name_en`;

-- ALTER TABLE `service` ADD COLUMN `name_en` VARCHAR(250) NULL AFTER `name_ar`;
-- ALTER TABLE `service` ADD UNIQUE(`name_en`);

ALTER TABLE `users` ADD COLUMN `code_zone_patient_id` VARCHAR(250) NULL AFTER `adress2`;

