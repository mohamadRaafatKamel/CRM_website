CREATE TABLE `doc_specialty` (
  `id` int(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `specialty_id` int(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `doc_specialty`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `specialty_id` (`specialty_id`);

ALTER TABLE `doc_specialty`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `doc_specialty`
  ADD CONSTRAINT `doc_specialty_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `doc_specialty_ibfk_2` FOREIGN KEY (`specialty_id`) REFERENCES `specialty` (`id`);
COMMIT;