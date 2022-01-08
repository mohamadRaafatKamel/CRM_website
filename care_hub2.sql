ALTER TABLE service
    ADD `image` varchar(250) DEFAULT NULL;

ALTER TABLE specialty
    ADD `image` varchar(250) DEFAULT NULL;

ALTER TABLE `specialty` ADD UNIQUE(`name_en`);
ALTER TABLE `service` ADD UNIQUE(`name_en`);
