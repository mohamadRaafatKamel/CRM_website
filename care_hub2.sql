ALTER TABLE request
    ADD `governorate_id` int(20) DEFAULT NULL,
    ADD `city_id` int(20) DEFAULT NULL,
    ADD `adress` varchar(250) DEFAULT NULL,
    ADD `adress2` varchar(250) DEFAULT NULL;

ALTER TABLE `request`
  ADD KEY `city_id` (`city_id`),
  ADD KEY `governorate_id` (`governorate_id`);

ALTER TABLE `request`
    ADD CONSTRAINT `request_ibfk_4` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
    ADD CONSTRAINT `request_ibfk_5` FOREIGN KEY (`governorate_id`) REFERENCES `governorates` (`id`);
