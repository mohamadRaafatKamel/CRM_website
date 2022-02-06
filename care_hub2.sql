ALTER TABLE `care_hub.request` DROP FOREIGN KEY `request_ibfk_8`;
ALTER TABLE `request` DROP INDEX `redirect_to_admin_id`;
ALTER TABLE `request` DROP `redirect_to_admin_id`;
