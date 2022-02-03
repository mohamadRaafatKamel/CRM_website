DROP TABLE `care_hub`.`orders_service`;
DROP TABLE `care_hub`.`orders_profile`;
DROP TABLE `care_hub`.`orders`;
DROP TABLE `care_hub`.`request`;

CREATE TABLE `request` (
  `id` int(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `doctor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `nurse_id` bigint(20) UNSIGNED DEFAULT NULL,

  `fullname` varchar(250) DEFAULT NULL,
  `name_caregiver` varchar(250) DEFAULT NULL,
  `gender` int(1) DEFAULT NULL,

  `location` varchar(250) DEFAULT NULL,
  `governorate_id` varchar(2) DEFAULT NULL,
  `city_id` int(20) DEFAULT NULL,
  `adress` varchar(250) DEFAULT NULL,
  `land_mark` varchar(250) DEFAULT NULL,
  `floor` varchar(250) DEFAULT NULL,
  `apartment` varchar(250) DEFAULT NULL,

  `phone` varchar(20) DEFAULT NULL,
  `phone2` varchar(250) DEFAULT NULL,
  `whatapp` int(1) NOT NULL DEFAULT 0,
  `whatapp2` int(1) NOT NULL DEFAULT 0,
  `whatsApp_group` varchar(250) DEFAULT NULL,

  `age`  varchar(20) DEFAULT NULL,
  `referral`  varchar(250) DEFAULT NULL,
  `corporate`  varchar(250) DEFAULT NULL,
  `consultant` varchar(250) DEFAULT NULL,
  `physician` varchar(250) DEFAULT NULL,
  
  
  `type` int(1) DEFAULT NULL, 
  `covid19` int(1) DEFAULT 0,

  `specialty_id` int(20) DEFAULT NULL,
  `service_id` int(20) DEFAULT NULL,
  `package_id` int(20) DEFAULT NULL,

  `visit_time_day` date DEFAULT NULL,
  `visit_time_from` time DEFAULT NULL,
  `visit_time_to` time DEFAULT NULL,

  `expectation_cost` int(20) DEFAULT 0,
  `real_cost` int(20) DEFAULT 0,
  `bill_serial`  varchar(250) DEFAULT NULL,
  `pay_or_not` int(1) DEFAULT 0,

  `code_zone_patient_id` varchar(250) DEFAULT NULL,
  `bed_number` varchar(250) DEFAULT NULL,

  `symptoms` varchar(250) DEFAULT NULL,
  `doc_note`  varchar(250) DEFAULT NULL,
  `Feedback`  varchar(250) DEFAULT NULL,
  
  `doc_rate` int(1) DEFAULT NULL,
  `user_rate` int(1) DEFAULT NULL,

  `opd_admin_id` int(20) DEFAULT NULL,
  `cc_admin_id` int(20) DEFAULT NULL,
  `redirect_to_admin_id` int(20) DEFAULT NULL,

  `status_doc` int(1) DEFAULT NULL,
  `status_user` int(1) DEFAULT NULL,
  `status_cc` int(1) DEFAULT 1,
  `status_in_out` int(1) DEFAULT 1,

  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


ALTER TABLE `request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `nurse_id` (`nurse_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `specialty_id` (`specialty_id`),
  ADD KEY `opd_admin_id` (`opd_admin_id`),
  ADD KEY `cc_admin_id` (`cc_admin_id`),
  ADD KEY `redirect_to_admin_id` (`redirect_to_admin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `request`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `request`
  ADD CONSTRAINT `request_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `request_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `request_ibfk_21` FOREIGN KEY (`nurse_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `request_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `request_ibfk_4` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`),
  ADD CONSTRAINT `request_ibfk_5` FOREIGN KEY (`specialty_id`) REFERENCES `specialty` (`id`),
  ADD CONSTRAINT `request_ibfk_7` FOREIGN KEY (`cc_admin_id`) REFERENCES `admin` (`id`),
  ADD CONSTRAINT `request_ibfk_71` FOREIGN KEY (`opd_admin_id`) REFERENCES `admin` (`id`),
  ADD CONSTRAINT `request_ibfk_8` FOREIGN KEY (`redirect_to_admin_id`) REFERENCES `admin` (`id`);


INSERT INTO `request` (`id`, `user_id`, `doctor_id`, `nurse_id`, `fullname`, `name_caregiver`, `gender`, `location`, `governorate_id`, `city_id`, `adress`, `land_mark`, `floor`, `apartment`, `phone`, `phone2`, `whatapp`, `whatapp2`, `whatsApp_group`, `age`, `referral`, `corporate`, `consultant`, `physician`, `type`, `covid19`, `specialty_id`, `service_id`, `package_id`, `visit_time_day`, `visit_time_from`, `visit_time_to`, `expectation_cost`, `real_cost`, `bill_serial`, `pay_or_not`, `code_zone_patient_id`, `bed_number`, `symptoms`, `doc_note`, `Feedback`, `doc_rate`, `user_rate`, `opd_admin_id`, `cc_admin_id`, `redirect_to_admin_id`, `status_doc`, `status_user`, `status_cc`, `status_in_out`, `created_at`, `updated_at`) 
VALUES ('0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', NULL, NULL);







