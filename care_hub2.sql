
CREATE TABLE `web_survey` (
  `id` int(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `age` int(2) DEFAULT 0,
  `opinion_carehub` int(2) DEFAULT 0,
  `know_carehub` int(2) DEFAULT 0,
  `try_carehub` int(2) DEFAULT 0,
  `note` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `web_survey`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

ALTER TABLE `web_survey`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `web_survey`
  ADD CONSTRAINT `web_survey_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
