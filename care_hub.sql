-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2021 at 01:24 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `care_hub`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `photo` varchar(250) DEFAULT NULL,
  `permission` int(2) NOT NULL DEFAULT 1,
  `remember_token` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `photo`, `permission`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@code-flex.com', '$2y$10$8myWRaTmc9L9bP4O7GQUe.pd5dzIrMddtEoCq.rQwcWogb6FuIY.a', NULL, 0, 'J8WQzhnp6pRK11vyzDU45Yk1VK7DGCcr5pmwp1AwoKbbbzyfnf3bhmKqFARX', '2021-12-15 10:06:52', '2021-12-15 10:06:52');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(20) NOT NULL,
  `governorate_id` int(11) NOT NULL,
  `city_name_ar` varchar(200) NOT NULL,
  `city_name_en` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `governorate_id`, `city_name_ar`, `city_name_en`) VALUES
(1, 1, '15 مايو', '15 May'),
(2, 1, 'الازبكية', 'Al Azbakeyah'),
(3, 1, 'البساتين', 'Al Basatin'),
(4, 1, 'التبين', 'Tebin'),
(5, 1, 'الخليفة', 'El-Khalifa'),
(6, 1, 'الدراسة', 'El darrasa'),
(7, 1, 'الدرب الاحمر', 'Aldarb Alahmar'),
(8, 1, 'الزاوية الحمراء', 'Zawya al-Hamra'),
(9, 1, 'الزيتون', 'El-Zaytoun'),
(10, 1, 'الساحل', 'Sahel'),
(11, 1, 'السلام', 'El Salam'),
(12, 1, 'السيدة زينب', 'Sayeda Zeinab'),
(13, 1, 'الشرابية', 'El Sharabeya'),
(14, 1, 'مدينة الشروق', 'Shorouk'),
(15, 1, 'الظاهر', 'El Daher'),
(16, 1, 'العتبة', 'Ataba'),
(17, 1, 'القاهرة الجديدة', 'New Cairo'),
(18, 1, 'المرج', 'El Marg'),
(19, 1, 'عزبة النخل', 'Ezbet el Nakhl'),
(20, 1, 'المطرية', 'Matareya'),
(21, 1, 'المعادى', 'Maadi'),
(22, 1, 'المعصرة', 'Maasara'),
(23, 1, 'المقطم', 'Mokattam'),
(24, 1, 'المنيل', 'Manyal'),
(25, 1, 'الموسكى', 'Mosky'),
(26, 1, 'النزهة', 'Nozha'),
(27, 1, 'الوايلى', 'Waily'),
(28, 1, 'باب الشعرية', 'Bab al-Shereia'),
(29, 1, 'بولاق', 'Bolaq'),
(30, 1, 'جاردن سيتى', 'Garden City'),
(31, 1, 'حدائق القبة', 'Hadayek El-Kobba'),
(32, 1, 'حلوان', 'Helwan'),
(33, 1, 'دار السلام', 'Dar Al Salam'),
(34, 1, 'شبرا', 'Shubra'),
(35, 1, 'طره', 'Tura'),
(36, 1, 'عابدين', 'Abdeen'),
(37, 1, 'عباسية', 'Abaseya'),
(38, 1, 'عين شمس', 'Ain Shams'),
(39, 1, 'مدينة نصر', 'Nasr City'),
(40, 1, 'مصر الجديدة', 'New Heliopolis'),
(41, 1, 'مصر القديمة', 'Masr Al Qadima'),
(42, 1, 'منشية ناصر', 'Mansheya Nasir'),
(43, 1, 'مدينة بدر', 'Badr City'),
(44, 1, 'مدينة العبور', 'Obour City'),
(45, 1, 'وسط البلد', 'Cairo Downtown'),
(46, 1, 'الزمالك', 'Zamalek'),
(47, 1, 'قصر النيل', 'Kasr El Nile'),
(48, 1, 'الرحاب', 'Rehab'),
(49, 1, 'القطامية', 'Katameya'),
(50, 1, 'مدينتي', 'Madinty'),
(51, 1, 'روض الفرج', 'Rod Alfarag'),
(52, 1, 'شيراتون', 'Sheraton'),
(53, 1, 'الجمالية', 'El-Gamaleya'),
(54, 1, 'العاشر من رمضان', '10th of Ramadan City'),
(55, 1, 'الحلمية', 'Helmeyat Alzaytoun'),
(56, 1, 'النزهة الجديدة', 'New Nozha'),
(57, 1, 'العاصمة الإدارية', 'Capital New'),
(58, 2, 'الجيزة', 'Giza'),
(59, 2, 'السادس من أكتوبر', 'Sixth of October'),
(60, 2, 'الشيخ زايد', 'Cheikh Zayed'),
(61, 2, 'الحوامدية', 'Hawamdiyah'),
(62, 2, 'البدرشين', 'Al Badrasheen'),
(63, 2, 'الصف', 'Saf'),
(64, 2, 'أطفيح', 'Atfih'),
(65, 2, 'العياط', 'Al Ayat'),
(66, 2, 'الباويطي', 'Al-Bawaiti'),
(67, 2, 'منشأة القناطر', 'ManshiyetAl Qanater'),
(68, 2, 'أوسيم', 'Oaseem'),
(69, 2, 'كرداسة', 'Kerdasa'),
(70, 2, 'أبو النمرس', 'Abu Nomros'),
(71, 2, 'كفر غطاطي', 'Kafr Ghati'),
(72, 2, 'منشأة البكاري', 'Manshiyet Al Bakari'),
(73, 2, 'الدقى', 'Dokki'),
(74, 2, 'العجوزة', 'Agouza'),
(75, 2, 'الهرم', 'Haram'),
(76, 2, 'الوراق', 'Warraq'),
(77, 2, 'امبابة', 'Imbaba'),
(78, 2, 'بولاق الدكرور', 'Boulaq Dakrour'),
(79, 2, 'الواحات البحرية', 'Al Wahat Al Baharia'),
(80, 2, 'العمرانية', 'Omraneya'),
(81, 2, 'المنيب', 'Moneeb'),
(82, 2, 'بين السرايات', 'Bin Alsarayat'),
(83, 2, 'الكيت كات', 'Kit Kat'),
(84, 2, 'المهندسين', 'Mohandessin'),
(85, 2, 'فيصل', 'Faisal'),
(86, 2, 'أبو رواش', 'Abu Rawash'),
(87, 2, 'حدائق الأهرام', 'Hadayek Alahram'),
(88, 2, 'الحرانية', 'Haraneya'),
(89, 2, 'حدائق اكتوبر', 'Hadayek October'),
(90, 2, 'صفط اللبن', 'Saft Allaban'),
(91, 2, 'القرية الذكية', 'Smart Village'),
(92, 2, 'ارض اللواء', 'Ard Ellwaa'),
(93, 3, 'ابو قير', 'Abu Qir'),
(94, 3, 'الابراهيمية', 'Al Ibrahimeyah'),
(95, 3, 'الأزاريطة', 'Azarita'),
(96, 3, 'الانفوشى', 'Anfoushi'),
(97, 3, 'الدخيلة', 'Dekheila'),
(98, 3, 'السيوف', 'El Soyof'),
(99, 3, 'العامرية', 'Ameria'),
(100, 3, 'اللبان', 'El Labban'),
(101, 3, 'المفروزة', 'Al Mafrouza'),
(102, 3, 'المنتزه', 'El Montaza'),
(103, 3, 'المنشية', 'Mansheya'),
(104, 3, 'الناصرية', 'Naseria'),
(105, 3, 'امبروزو', 'Ambrozo'),
(106, 3, 'باب شرق', 'Bab Sharq'),
(107, 3, 'برج العرب', 'Bourj Alarab'),
(108, 3, 'ستانلى', 'Stanley'),
(109, 3, 'سموحة', 'Smouha'),
(110, 3, 'سيدى بشر', 'Sidi Bishr'),
(111, 3, 'شدس', 'Shads'),
(112, 3, 'غيط العنب', 'Gheet Alenab'),
(113, 3, 'فلمينج', 'Fleming'),
(114, 3, 'فيكتوريا', 'Victoria'),
(115, 3, 'كامب شيزار', 'Camp Shizar'),
(116, 3, 'كرموز', 'Karmooz'),
(117, 3, 'محطة الرمل', 'Mahta Alraml'),
(118, 3, 'مينا البصل', 'Mina El-Basal'),
(119, 3, 'العصافرة', 'Asafra'),
(120, 3, 'العجمي', 'Agamy'),
(121, 3, 'بكوس', 'Bakos'),
(122, 3, 'بولكلي', 'Boulkly'),
(123, 3, 'كليوباترا', 'Cleopatra'),
(124, 3, 'جليم', 'Glim'),
(125, 3, 'المعمورة', 'Al Mamurah'),
(126, 3, 'المندرة', 'Al Mandara'),
(127, 3, 'محرم بك', 'Moharam Bek'),
(128, 3, 'الشاطبي', 'Elshatby'),
(129, 3, 'سيدي جابر', 'Sidi Gaber'),
(130, 3, 'الساحل الشمالي', 'North Coast/sahel'),
(131, 3, 'الحضرة', 'Alhadra'),
(132, 3, 'العطارين', 'Alattarin'),
(133, 3, 'سيدي كرير', 'Sidi Kerir'),
(134, 3, 'الجمرك', 'Elgomrok'),
(135, 3, 'المكس', 'Al Max'),
(136, 3, 'مارينا', 'Marina'),
(137, 4, 'المنصورة', 'Mansoura'),
(138, 4, 'طلخا', 'Talkha'),
(139, 4, 'ميت غمر', 'Mitt Ghamr'),
(140, 4, 'دكرنس', 'Dekernes'),
(141, 4, 'أجا', 'Aga'),
(142, 4, 'منية النصر', 'Menia El Nasr'),
(143, 4, 'السنبلاوين', 'Sinbillawin'),
(144, 4, 'الكردي', 'El Kurdi'),
(145, 4, 'بني عبيد', 'Bani Ubaid'),
(146, 4, 'المنزلة', 'Al Manzala'),
(147, 4, 'تمي الأمديد', 'tami al\'amdid'),
(148, 4, 'الجمالية', 'aljamalia'),
(149, 4, 'شربين', 'Sherbin'),
(150, 4, 'المطرية', 'Mataria'),
(151, 4, 'بلقاس', 'Belqas'),
(152, 4, 'ميت سلسيل', 'Meet Salsil'),
(153, 4, 'جمصة', 'Gamasa'),
(154, 4, 'محلة دمنة', 'Mahalat Damana'),
(155, 4, 'نبروه', 'Nabroh'),
(156, 5, 'الغردقة', 'Hurghada'),
(157, 5, 'رأس غارب', 'Ras Ghareb'),
(158, 5, 'سفاجا', 'Safaga'),
(159, 5, 'القصير', 'El Qusiar'),
(160, 5, 'مرسى علم', 'Marsa Alam'),
(161, 5, 'الشلاتين', 'Shalatin'),
(162, 5, 'حلايب', 'Halaib'),
(163, 5, 'الدهار', 'Aldahar'),
(164, 6, 'دمنهور', 'Damanhour'),
(165, 6, 'كفر الدوار', 'Kafr El Dawar'),
(166, 6, 'رشيد', 'Rashid'),
(167, 6, 'إدكو', 'Edco'),
(168, 6, 'أبو المطامير', 'Abu al-Matamir'),
(169, 6, 'أبو حمص', 'Abu Homs'),
(170, 6, 'الدلنجات', 'Delengat'),
(171, 6, 'المحمودية', 'Mahmoudiyah'),
(172, 6, 'الرحمانية', 'Rahmaniyah'),
(173, 6, 'إيتاي البارود', 'Itai Baroud'),
(174, 6, 'حوش عيسى', 'Housh Eissa'),
(175, 6, 'شبراخيت', 'Shubrakhit'),
(176, 6, 'كوم حمادة', 'Kom Hamada'),
(177, 6, 'بدر', 'Badr'),
(178, 6, 'وادي النطرون', 'Wadi Natrun'),
(179, 6, 'النوبارية الجديدة', 'New Nubaria'),
(180, 6, 'النوبارية', 'Alnoubareya'),
(181, 7, 'الفيوم', 'Fayoum'),
(182, 7, 'الفيوم الجديدة', 'Fayoum El Gedida'),
(183, 7, 'طامية', 'Tamiya'),
(184, 7, 'سنورس', 'Snores'),
(185, 7, 'إطسا', 'Etsa'),
(186, 7, 'إبشواي', 'Epschway'),
(187, 7, 'يوسف الصديق', 'Yusuf El Sediaq'),
(188, 7, 'الحادقة', 'Hadqa'),
(189, 7, 'اطسا', 'Atsa'),
(190, 7, 'الجامعة', 'Algamaa'),
(191, 7, 'السيالة', 'Sayala'),
(192, 8, 'طنطا', 'Tanta'),
(193, 8, 'المحلة الكبرى', 'Al Mahalla Al Kobra'),
(194, 8, 'كفر الزيات', 'Kafr El Zayat'),
(195, 8, 'زفتى', 'Zefta'),
(196, 8, 'السنطة', 'El Santa'),
(197, 8, 'قطور', 'Qutour'),
(198, 8, 'بسيون', 'Basion'),
(199, 8, 'سمنود', 'Samannoud'),
(200, 9, 'الإسماعيلية', 'Ismailia'),
(201, 9, 'فايد', 'Fayed'),
(202, 9, 'القنطرة شرق', 'Qantara Sharq'),
(203, 9, 'القنطرة غرب', 'Qantara Gharb'),
(204, 9, 'التل الكبير', 'El Tal El Kabier'),
(205, 9, 'أبو صوير', 'Abu Sawir'),
(206, 9, 'القصاصين الجديدة', 'Kasasien El Gedida'),
(207, 9, 'نفيشة', 'Nefesha'),
(208, 9, 'الشيخ زايد', 'Sheikh Zayed'),
(209, 10, 'شبين الكوم', 'Shbeen El Koom'),
(210, 10, 'مدينة السادات', 'Sadat City'),
(211, 10, 'منوف', 'Menouf'),
(212, 10, 'سرس الليان', 'Sars El-Layan'),
(213, 10, 'أشمون', 'Ashmon'),
(214, 10, 'الباجور', 'Al Bagor'),
(215, 10, 'قويسنا', 'Quesna'),
(216, 10, 'بركة السبع', 'Berkat El Saba'),
(217, 10, 'تلا', 'Tala'),
(218, 10, 'الشهداء', 'Al Shohada'),
(219, 11, 'المنيا', 'Minya'),
(220, 11, 'المنيا الجديدة', 'Minya El Gedida'),
(221, 11, 'العدوة', 'El Adwa'),
(222, 11, 'مغاغة', 'Magagha'),
(223, 11, 'بني مزار', 'Bani Mazar'),
(224, 11, 'مطاي', 'Mattay'),
(225, 11, 'سمالوط', 'Samalut'),
(226, 11, 'المدينة الفكرية', 'Madinat El Fekria'),
(227, 11, 'ملوي', 'Meloy'),
(228, 11, 'دير مواس', 'Deir Mawas'),
(229, 11, 'ابو قرقاص', 'Abu Qurqas'),
(230, 11, 'ارض سلطان', 'Ard Sultan'),
(231, 12, 'بنها', 'Banha'),
(232, 12, 'قليوب', 'Qalyub'),
(233, 12, 'شبرا الخيمة', 'Shubra Al Khaimah'),
(234, 12, 'القناطر الخيرية', 'Al Qanater Charity'),
(235, 12, 'الخانكة', 'Khanka'),
(236, 12, 'كفر شكر', 'Kafr Shukr'),
(237, 12, 'طوخ', 'Tukh'),
(238, 12, 'قها', 'Qaha'),
(239, 12, 'العبور', 'Obour'),
(240, 12, 'الخصوص', 'Khosous'),
(241, 12, 'شبين القناطر', 'Shibin Al Qanater'),
(242, 12, 'مسطرد', 'Mostorod'),
(243, 13, 'الخارجة', 'El Kharga'),
(244, 13, 'باريس', 'Paris'),
(245, 13, 'موط', 'Mout'),
(246, 13, 'الفرافرة', 'Farafra'),
(247, 13, 'بلاط', 'Balat'),
(248, 13, 'الداخلة', 'Dakhla'),
(249, 14, 'السويس', 'Suez'),
(250, 14, 'الجناين', 'Alganayen'),
(251, 14, 'عتاقة', 'Ataqah'),
(252, 14, 'العين السخنة', 'Ain Sokhna'),
(253, 14, 'فيصل', 'Faysal'),
(254, 15, 'أسوان', 'Aswan'),
(255, 15, 'أسوان الجديدة', 'Aswan El Gedida'),
(256, 15, 'دراو', 'Drau'),
(257, 15, 'كوم أمبو', 'Kom Ombo'),
(258, 15, 'نصر النوبة', 'Nasr Al Nuba'),
(259, 15, 'كلابشة', 'Kalabsha'),
(260, 15, 'إدفو', 'Edfu'),
(261, 15, 'الرديسية', 'Al-Radisiyah'),
(262, 15, 'البصيلية', 'Al Basilia'),
(263, 15, 'السباعية', 'Al Sibaeia'),
(264, 15, 'ابوسمبل السياحية', 'Abo Simbl Al Siyahia'),
(265, 15, 'مرسى علم', 'Marsa Alam'),
(266, 16, 'أسيوط', 'Assiut'),
(267, 16, 'أسيوط الجديدة', 'Assiut El Gedida'),
(268, 16, 'ديروط', 'Dayrout'),
(269, 16, 'منفلوط', 'Manfalut'),
(270, 16, 'القوصية', 'Qusiya'),
(271, 16, 'أبنوب', 'Abnoub'),
(272, 16, 'أبو تيج', 'Abu Tig'),
(273, 16, 'الغنايم', 'El Ghanaim'),
(274, 16, 'ساحل سليم', 'Sahel Selim'),
(275, 16, 'البداري', 'El Badari'),
(276, 16, 'صدفا', 'Sidfa'),
(277, 17, 'بني سويف', 'Bani Sweif'),
(278, 17, 'بني سويف الجديدة', 'Beni Suef El Gedida'),
(279, 17, 'الواسطى', 'Al Wasta'),
(280, 17, 'ناصر', 'Naser'),
(281, 17, 'إهناسيا', 'Ehnasia'),
(282, 17, 'ببا', 'beba'),
(283, 17, 'الفشن', 'Fashn'),
(284, 17, 'سمسطا', 'Somasta'),
(285, 17, 'الاباصيرى', 'Alabbaseri'),
(286, 17, 'مقبل', 'Mokbel'),
(287, 18, 'بورسعيد', 'PorSaid'),
(288, 18, 'بورفؤاد', 'Port Fouad'),
(289, 18, 'العرب', 'Alarab'),
(290, 18, 'حى الزهور', 'Zohour'),
(291, 18, 'حى الشرق', 'Alsharq'),
(292, 18, 'حى الضواحى', 'Aldawahi'),
(293, 18, 'حى المناخ', 'Almanakh'),
(294, 18, 'حى مبارك', 'Mubarak'),
(295, 19, 'دمياط', 'Damietta'),
(296, 19, 'دمياط الجديدة', 'New Damietta'),
(297, 19, 'رأس البر', 'Ras El Bar'),
(298, 19, 'فارسكور', 'Faraskour'),
(299, 19, 'الزرقا', 'Zarqa'),
(300, 19, 'السرو', 'alsaru'),
(301, 19, 'الروضة', 'alruwda'),
(302, 19, 'كفر البطيخ', 'Kafr El-Batikh'),
(303, 19, 'عزبة البرج', 'Azbet Al Burg'),
(304, 19, 'ميت أبو غالب', 'Meet Abou Ghalib'),
(305, 19, 'كفر سعد', 'Kafr Saad'),
(306, 20, 'الزقازيق', 'Zagazig'),
(307, 20, 'العاشر من رمضان', 'Al Ashr Men Ramadan'),
(308, 20, 'منيا القمح', 'Minya Al Qamh'),
(309, 20, 'بلبيس', 'Belbeis'),
(310, 20, 'مشتول السوق', 'Mashtoul El Souq'),
(311, 20, 'القنايات', 'Qenaiat'),
(312, 20, 'أبو حماد', 'Abu Hammad'),
(313, 20, 'القرين', 'El Qurain'),
(314, 20, 'ههيا', 'Hehia'),
(315, 20, 'أبو كبير', 'Abu Kabir'),
(316, 20, 'فاقوس', 'Faccus'),
(317, 20, 'الصالحية الجديدة', 'El Salihia El Gedida'),
(318, 20, 'الإبراهيمية', 'Al Ibrahimiyah'),
(319, 20, 'ديرب نجم', 'Deirb Negm'),
(320, 20, 'كفر صقر', 'Kafr Saqr'),
(321, 20, 'أولاد صقر', 'Awlad Saqr'),
(322, 20, 'الحسينية', 'Husseiniya'),
(323, 20, 'صان الحجر القبلية', 'san alhajar alqablia'),
(324, 20, 'منشأة أبو عمر', 'Manshayat Abu Omar'),
(325, 21, 'الطور', 'Al Toor'),
(326, 21, 'شرم الشيخ', 'Sharm El-Shaikh'),
(327, 21, 'دهب', 'Dahab'),
(328, 21, 'نويبع', 'Nuweiba'),
(329, 21, 'طابا', 'Taba'),
(330, 21, 'سانت كاترين', 'Saint Catherine'),
(331, 21, 'أبو رديس', 'Abu Redis'),
(332, 21, 'أبو زنيمة', 'Abu Zenaima'),
(333, 21, 'رأس سدر', 'Ras Sidr'),
(334, 22, 'كفر الشيخ', 'Kafr El Sheikh'),
(335, 22, 'وسط البلد كفر الشيخ', 'Kafr El Sheikh Downtown'),
(336, 22, 'دسوق', 'Desouq'),
(337, 22, 'فوه', 'Fooh'),
(338, 22, 'مطوبس', 'Metobas'),
(339, 22, 'برج البرلس', 'Burg Al Burullus'),
(340, 22, 'بلطيم', 'Baltim'),
(341, 22, 'مصيف بلطيم', 'Masief Baltim'),
(342, 22, 'الحامول', 'Hamol'),
(343, 22, 'بيلا', 'Bella'),
(344, 22, 'الرياض', 'Riyadh'),
(345, 22, 'سيدي سالم', 'Sidi Salm'),
(346, 22, 'قلين', 'Qellen'),
(347, 22, 'سيدي غازي', 'Sidi Ghazi'),
(348, 23, 'مرسى مطروح', 'Marsa Matrouh'),
(349, 23, 'الحمام', 'El Hamam'),
(350, 23, 'العلمين', 'Alamein'),
(351, 23, 'الضبعة', 'Dabaa'),
(352, 23, 'النجيلة', 'Al-Nagila'),
(353, 23, 'سيدي براني', 'Sidi Brani'),
(354, 23, 'السلوم', 'Salloum'),
(355, 23, 'سيوة', 'Siwa'),
(356, 23, 'مارينا', 'Marina'),
(357, 23, 'الساحل الشمالى', 'North Coast'),
(358, 24, 'الأقصر', 'Luxor'),
(359, 24, 'الأقصر الجديدة', 'New Luxor'),
(360, 24, 'إسنا', 'Esna'),
(361, 24, 'طيبة الجديدة', 'New Tiba'),
(362, 24, 'الزينية', 'Al ziynia'),
(363, 24, 'البياضية', 'Al Bayadieh'),
(364, 24, 'القرنة', 'Al Qarna'),
(365, 24, 'أرمنت', 'Armant'),
(366, 24, 'الطود', 'Al Tud'),
(367, 25, 'قنا', 'Qena'),
(368, 25, 'قنا الجديدة', 'New Qena'),
(369, 25, 'ابو طشت', 'Abu Tesht'),
(370, 25, 'نجع حمادي', 'Nag Hammadi'),
(371, 25, 'دشنا', 'Deshna'),
(372, 25, 'الوقف', 'Alwaqf'),
(373, 25, 'قفط', 'Qaft'),
(374, 25, 'نقادة', 'Naqada'),
(375, 25, 'فرشوط', 'Farshout'),
(376, 25, 'قوص', 'Quos'),
(377, 26, 'العريش', 'Arish'),
(378, 26, 'الشيخ زويد', 'Sheikh Zowaid'),
(379, 26, 'نخل', 'Nakhl'),
(380, 26, 'رفح', 'Rafah'),
(381, 26, 'بئر العبد', 'Bir al-Abed'),
(382, 26, 'الحسنة', 'Al Hasana'),
(383, 27, 'سوهاج', 'Sohag'),
(384, 27, 'سوهاج الجديدة', 'Sohag El Gedida'),
(385, 27, 'أخميم', 'Akhmeem'),
(386, 27, 'أخميم الجديدة', 'Akhmim El Gedida'),
(387, 27, 'البلينا', 'Albalina'),
(388, 27, 'المراغة', 'El Maragha'),
(389, 27, 'المنشأة', 'almunsha\'a'),
(390, 27, 'دار السلام', 'Dar AISalaam'),
(391, 27, 'جرجا', 'Gerga'),
(392, 27, 'جهينة الغربية', 'Jahina Al Gharbia'),
(393, 27, 'ساقلته', 'Saqilatuh'),
(394, 27, 'طما', 'Tama'),
(395, 27, 'طهطا', 'Tahta'),
(396, 27, 'الكوثر', 'Alkawthar');

-- --------------------------------------------------------

--
-- Table structure for table `company_info`
--

CREATE TABLE `company_info` (
  `id` int(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `org_name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `phone` varchar(250) DEFAULT NULL,
  `website` varchar(250) DEFAULT NULL,
  `contact_person_name` varchar(250) DEFAULT NULL,
  `registration_num` varchar(250) DEFAULT NULL,
  `tax_certificate_num` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company_info`
--

INSERT INTO `company_info` (`id`, `user_id`, `org_name`, `email`, `phone`, `website`, `contact_person_name`, `registration_num`, `tax_certificate_num`, `created_at`, `updated_at`) VALUES
(0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_enName` varchar(100) NOT NULL DEFAULT '',
  `country_arName` varchar(100) NOT NULL DEFAULT '',
  `country_enNationality` varchar(100) NOT NULL DEFAULT '',
  `country_arNationality` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_code`, `country_enName`, `country_arName`, `country_enNationality`, `country_arNationality`) VALUES
('AD', 'Andorra', 'أندورا', 'Andorran', 'أندوري'),
('AE', 'United Arab Emirates', 'الإمارات العربية المتحدة', 'Emirati', 'إماراتي'),
('AF', 'Afghanistan', 'أفغانستان', 'Afghan', 'أفغانستاني'),
('AG', 'Antigua and Barbuda', 'أنتيغوا وبربودا', 'Antiguan', 'بربودي'),
('AI', 'Anguilla', 'أنغويلا', 'Anguillan', 'أنغويلي'),
('AL', 'Albania', 'ألبانيا', 'Albanian', 'ألباني'),
('AM', 'Armenia', 'أرمينيا', 'Armenian', 'أرميني'),
('AN', 'Netherlands Antilles', 'جزر الأنتيل الهولندي', 'Dutch Antilier', 'هولندي'),
('AO', 'Angola', 'أنغولا', 'Angolan', 'أنقولي'),
('AQ', 'Antarctica', 'أنتاركتيكا', 'Antarctican', 'أنتاركتيكي'),
('AR', 'Argentina', 'الأرجنتين', 'Argentinian', 'أرجنتيني'),
('AS', 'American Samoa', 'ساموا-الأمريكي', 'American Samoan', 'أمريكي سامواني'),
('AT', 'Austria', 'النمسا', 'Austrian', 'نمساوي'),
('AU', 'Australia', 'أستراليا', 'Australian', 'أسترالي'),
('AW', 'Aruba', 'أروبه', 'Aruban', 'أوروبهيني'),
('AX', 'Aland Islands', 'جزر آلاند', 'Aland Islander', 'آلاندي'),
('AZ', 'Azerbaijan', 'أذربيجان', 'Azerbaijani', 'أذربيجاني'),
('BA', 'Bosnia and Herzegovina', 'البوسنة و الهرسك', 'Bosnian / Herzegovinian', 'بوسني/هرسكي'),
('BB', 'Barbados', 'بربادوس', 'Barbadian', 'بربادوسي'),
('BD', 'Bangladesh', 'بنغلاديش', 'Bangladeshi', 'بنغلاديشي'),
('BE', 'Belgium', 'بلجيكا', 'Belgian', 'بلجيكي'),
('BF', 'Burkina Faso', 'بوركينا فاسو', 'Burkinabe', 'بوركيني'),
('BG', 'Bulgaria', 'بلغاريا', 'Bulgarian', 'بلغاري'),
('BH', 'Bahrain', 'البحرين', 'Bahraini', 'بحريني'),
('BI', 'Burundi', 'بوروندي', 'Burundian', 'بورونيدي'),
('BJ', 'Benin', 'بنين', 'Beninese', 'بنيني'),
('BL', 'Saint Barthelemy', 'سان بارتيلمي', 'Saint Barthelmian', 'سان بارتيلمي'),
('BM', 'Bermuda', 'جزر برمودا', 'Bermudan', 'برمودي'),
('BN', 'Brunei Darussalam', 'بروني', 'Bruneian', 'بروني'),
('BO', 'Bolivia', 'بوليفيا', 'Bolivian', 'بوليفي'),
('BR', 'Brazil', 'البرازيل', 'Brazilian', 'برازيلي'),
('BS', 'Bahamas', 'الباهاماس', 'Bahamian', 'باهاميسي'),
('BT', 'Bhutan', 'بوتان', 'Bhutanese', 'بوتاني'),
('BV', 'Bouvet Island', 'جزيرة بوفيه', 'Bouvetian', 'بوفيهي'),
('BW', 'Botswana', 'بوتسوانا', 'Botswanan', 'بوتسواني'),
('BY', 'Belarus', 'روسيا البيضاء', 'Belarusian', 'روسي'),
('BZ', 'Belize', 'بيليز', 'Belizean', 'بيليزي'),
('CA', 'Canada', 'كندا', 'Canadian', 'كندي'),
('CC', 'Cocos (Keeling) Islands', 'جزر كوكوس', 'Cocos Islander', 'جزر كوكوس'),
('CF', 'Central African Republic', 'جمهورية أفريقيا الوسطى', 'Central African', 'أفريقي'),
('CG', 'Congo', 'الكونغو', 'Congolese', 'كونغي'),
('CH', 'Switzerland', 'سويسرا', 'Swiss', 'سويسري'),
('CI', 'Ivory Coast', 'ساحل العاج', 'Ivory Coastian', 'ساحل العاج'),
('CK', 'Cook Islands', 'جزر كوك', 'Cook Islander', 'جزر كوك'),
('CL', 'Chile', 'شيلي', 'Chilean', 'شيلي'),
('CM', 'Cameroon', 'كاميرون', 'Cameroonian', 'كاميروني'),
('CN', 'China', 'الصين', 'Chinese', 'صيني'),
('CO', 'Colombia', 'كولومبيا', 'Colombian', 'كولومبي'),
('CR', 'Costa Rica', 'كوستاريكا', 'Costa Rican', 'كوستاريكي'),
('CU', 'Cuba', 'كوبا', 'Cuban', 'كوبي'),
('CV', 'Cape Verde', 'الرأس الأخضر', 'Cape Verdean', 'الرأس الأخضر'),
('CW', 'Curaçao', 'كوراساو', 'Curacian', 'كوراساوي'),
('CX', 'Christmas Island', 'جزيرة عيد الميلاد', 'Christmas Islander', 'جزيرة عيد الميلاد'),
('CY', 'Cyprus', 'قبرص', 'Cypriot', 'قبرصي'),
('CZ', 'Czech Republic', 'الجمهورية التشيكية', 'Czech', 'تشيكي'),
('DE', 'Germany', 'ألمانيا', 'German', 'ألماني'),
('DJ', 'Djibouti', 'جيبوتي', 'Djiboutian', 'جيبوتي'),
('DK', 'Denmark', 'الدانمارك', 'Danish', 'دنماركي'),
('DM', 'Dominica', 'دومينيكا', 'Dominican', 'دومينيكي'),
('DO', 'Dominican Republic', 'الجمهورية الدومينيكية', 'Dominican', 'دومينيكي'),
('DZ', 'Algeria', 'الجزائر', 'Algerian', 'جزائري'),
('EC', 'Ecuador', 'إكوادور', 'Ecuadorian', 'إكوادوري'),
('EE', 'Estonia', 'استونيا', 'Estonian', 'استوني'),
('EG', 'Egypt', 'مصر', 'Egyptian', 'مصري'),
('EH', 'Western Sahara', 'الصحراء الغربية', 'Sahrawian', 'صحراوي'),
('ER', 'Eritrea', 'إريتريا', 'Eritrean', 'إريتيري'),
('ES', 'Spain', 'إسبانيا', 'Spanish', 'إسباني'),
('ET', 'Ethiopia', 'أثيوبيا', 'Ethiopian', 'أثيوبي'),
('FI', 'Finland', 'فنلندا', 'Finnish', 'فنلندي'),
('FJ', 'Fiji', 'فيجي', 'Fijian', 'فيجي'),
('FK', 'Falkland Islands (Malvinas)', 'جزر فوكلاند', 'Falkland Islander', 'فوكلاندي'),
('FM', 'Micronesia', 'مايكرونيزيا', 'Micronesian', 'مايكرونيزيي'),
('FO', 'Faroe Islands', 'جزر فارو', 'Faroese', 'جزر فارو'),
('FR', 'France', 'فرنسا', 'French', 'فرنسي'),
('GA', 'Gabon', 'الغابون', 'Gabonese', 'غابوني'),
('GB', 'United Kingdom', 'المملكة المتحدة', 'British', 'بريطاني'),
('GD', 'Grenada', 'غرينادا', 'Grenadian', 'غرينادي'),
('GE', 'Georgia', 'جيورجيا', 'Georgian', 'جيورجي'),
('GF', 'French Guiana', 'غويانا الفرنسية', 'French Guianese', 'غويانا الفرنسية'),
('GG', 'Guernsey', 'غيرنزي', 'Guernsian', 'غيرنزي'),
('GH', 'Ghana', 'غانا', 'Ghanaian', 'غاني'),
('GI', 'Gibraltar', 'جبل طارق', 'Gibraltar', 'جبل طارق'),
('GL', 'Greenland', 'جرينلاند', 'Greenlandic', 'جرينلاندي'),
('GM', 'Gambia', 'غامبيا', 'Gambian', 'غامبي'),
('GN', 'Guinea', 'غينيا', 'Guinean', 'غيني'),
('GP', 'Guadeloupe', 'جزر جوادلوب', 'Guadeloupe', 'جزر جوادلوب'),
('GQ', 'Equatorial Guinea', 'غينيا الاستوائي', 'Equatorial Guinean', 'غيني'),
('GR', 'Greece', 'اليونان', 'Greek', 'يوناني'),
('GS', 'South Georgia and the South Sandwich', 'المنطقة القطبية الجنوبية', 'South Georgia and the South Sandwich', 'لمنطقة القطبية الجنوبية'),
('GT', 'Guatemala', 'غواتيمال', 'Guatemalan', 'غواتيمالي'),
('GU', 'Guam', 'جوام', 'Guamanian', 'جوامي'),
('GW', 'Guinea-Bissau', 'غينيا-بيساو', 'Guinea-Bissauan', 'غيني'),
('GY', 'Guyana', 'غيانا', 'Guyanese', 'غياني'),
('HK', 'Hong Kong', 'هونغ كونغ', 'Hongkongese', 'هونغ كونغي'),
('HM', 'Heard and Mc Donald Islands', 'جزيرة هيرد وجزر ماكدونالد', 'Heard and Mc Donald Islanders', 'جزيرة هيرد وجزر ماكدونالد'),
('HN', 'Honduras', 'هندوراس', 'Honduran', 'هندوراسي'),
('HR', 'Croatia', 'كرواتيا', 'Croatian', 'كوراتي'),
('HT', 'Haiti', 'هايتي', 'Haitian', 'هايتي'),
('HU', 'Hungary', 'المجر', 'Hungarian', 'مجري'),
('ID', 'Indonesia', 'أندونيسيا', 'Indonesian', 'أندونيسيي'),
('IE', 'Ireland', 'إيرلندا', 'Irish', 'إيرلندي'),
('IL', 'Israel', 'إسرائيل', 'Israeli', 'إسرائيلي'),
('IM', 'Isle of Man', 'جزيرة مان', 'Manx', 'ماني'),
('IN', 'India', 'الهند', 'Indian', 'هندي'),
('IO', 'British Indian Ocean Territory', 'إقليم المحيط الهندي البريطاني', 'British Indian Ocean Territory', 'إقليم المحيط الهندي البريطاني'),
('IQ', 'Iraq', 'العراق', 'Iraqi', 'عراقي'),
('IR', 'Iran', 'إيران', 'Iranian', 'إيراني'),
('IS', 'Iceland', 'آيسلندا', 'Icelandic', 'آيسلندي'),
('IT', 'Italy', 'إيطاليا', 'Italian', 'إيطالي'),
('JE', 'Jersey', 'جيرزي', 'Jersian', 'جيرزي'),
('JM', 'Jamaica', 'جمايكا', 'Jamaican', 'جمايكي'),
('JO', 'Jordan', 'الأردن', 'Jordanian', 'أردني'),
('JP', 'Japan', 'اليابان', 'Japanese', 'ياباني'),
('KE', 'Kenya', 'كينيا', 'Kenyan', 'كيني'),
('KG', 'Kyrgyzstan', 'قيرغيزستان', 'Kyrgyzstani', 'قيرغيزستاني'),
('KH', 'Cambodia', 'كمبوديا', 'Cambodian', 'كمبودي'),
('KI', 'Kiribati', 'كيريباتي', 'I-Kiribati', 'كيريباتي'),
('KM', 'Comoros', 'جزر القمر', 'Comorian', 'جزر القمر'),
('KN', 'Saint Kitts and Nevis', 'سانت كيتس ونيفس,', 'Kittitian/Nevisian', 'سانت كيتس ونيفس'),
('KP', 'Korea(North Korea)', 'كوريا الشمالية', 'North Korean', 'كوري'),
('KR', 'Korea(South Korea)', 'كوريا الجنوبية', 'South Korean', 'كوري'),
('KW', 'Kuwait', 'الكويت', 'Kuwaiti', 'كويتي'),
('KY', 'Cayman Islands', 'جزر كايمان', 'Caymanian', 'كايماني'),
('KZ', 'Kazakhstan', 'كازاخستان', 'Kazakh', 'كازاخستاني'),
('LA', 'Lao PDR', 'لاوس', 'Laotian', 'لاوسي'),
('LB', 'Lebanon', 'لبنان', 'Lebanese', 'لبناني'),
('LC', 'Saint Pierre and Miquelon', 'سان بيير وميكلون', 'St. Pierre and Miquelon', 'سان بيير وميكلوني'),
('LI', 'Liechtenstein', 'ليختنشتين', 'Liechtenstein', 'ليختنشتيني'),
('LK', 'Sri Lanka', 'سريلانكا', 'Sri Lankian', 'سريلانكي'),
('LR', 'Liberia', 'ليبيريا', 'Liberian', 'ليبيري'),
('LS', 'Lesotho', 'ليسوتو', 'Basotho', 'ليوسيتي'),
('LT', 'Lithuania', 'لتوانيا', 'Lithuanian', 'لتوانيي'),
('LU', 'Luxembourg', 'لوكسمبورغ', 'Luxembourger', 'لوكسمبورغي'),
('LV', 'Latvia', 'لاتفيا', 'Latvian', 'لاتيفي'),
('LY', 'Libya', 'ليبيا', 'Libyan', 'ليبي'),
('MA', 'Morocco', 'المغرب', 'Moroccan', 'مغربي'),
('MC', 'Monaco', 'موناكو', 'Monacan', 'مونيكي'),
('MD', 'Moldova', 'مولدافيا', 'Moldovan', 'مولديفي'),
('ME', 'Montenegro', 'الجبل الأسود', 'Montenegrin', 'الجبل الأسود'),
('MF', 'Saint Martin (French part)', 'ساينت مارتن فرنسي', 'St. Martian(French)', 'ساينت مارتني فرنسي'),
('MG', 'Madagascar', 'مدغشقر', 'Malagasy', 'مدغشقري'),
('MH', 'Marshall Islands', 'جزر مارشال', 'Marshallese', 'مارشالي'),
('MK', 'Macedonia', 'مقدونيا', 'Macedonian', 'مقدوني'),
('ML', 'Mali', 'مالي', 'Malian', 'مالي'),
('MM', 'Myanmar', 'ميانمار', 'Myanmarian', 'ميانماري'),
('MN', 'Mongolia', 'منغوليا', 'Mongolian', 'منغولي'),
('MO', 'Macau', 'ماكاو', 'Macanese', 'ماكاوي'),
('MP', 'Northern Mariana Islands', 'جزر ماريانا الشمالية', 'Northern Marianan', 'ماريني'),
('MQ', 'Martinique', 'مارتينيك', 'Martiniquais', 'مارتينيكي'),
('MR', 'Mauritania', 'موريتانيا', 'Mauritanian', 'موريتانيي'),
('MS', 'Montserrat', 'مونتسيرات', 'Montserratian', 'مونتسيراتي'),
('MT', 'Malta', 'مالطا', 'Maltese', 'مالطي'),
('MU', 'Mauritius', 'موريشيوس', 'Mauritian', 'موريشيوسي'),
('MV', 'Maldives', 'المالديف', 'Maldivian', 'مالديفي'),
('MW', 'Malawi', 'مالاوي', 'Malawian', 'مالاوي'),
('MX', 'Mexico', 'المكسيك', 'Mexican', 'مكسيكي'),
('MY', 'Malaysia', 'ماليزيا', 'Malaysian', 'ماليزي'),
('MZ', 'Mozambique', 'موزمبيق', 'Mozambican', 'موزمبيقي'),
('NA', 'Namibia', 'ناميبيا', 'Namibian', 'ناميبي'),
('NC', 'New Caledonia', 'كاليدونيا الجديدة', 'New Caledonian', 'كاليدوني'),
('NE', 'Niger', 'النيجر', 'Nigerien', 'نيجيري'),
('NF', 'Norfolk Island', 'جزيرة نورفولك', 'Norfolk Islander', 'نورفوليكي'),
('NG', 'Nigeria', 'نيجيريا', 'Nigerian', 'نيجيري'),
('NI', 'Nicaragua', 'نيكاراجوا', 'Nicaraguan', 'نيكاراجوي'),
('NL', 'Netherlands', 'هولندا', 'Dutch', 'هولندي'),
('NO', 'Norway', 'النرويج', 'Norwegian', 'نرويجي'),
('NP', 'Nepal', 'نيبال', 'Nepalese', 'نيبالي'),
('NR', 'Nauru', 'نورو', 'Nauruan', 'نوري'),
('NU', 'Niue', 'ني', 'Niuean', 'ني'),
('NZ', 'New Zealand', 'نيوزيلندا', 'New Zealander', 'نيوزيلندي'),
('OM', 'Oman', 'عمان', 'Omani', 'عماني'),
('PA', 'Panama', 'بنما', 'Panamanian', 'بنمي'),
('PE', 'Peru', 'بيرو', 'Peruvian', 'بيري'),
('PF', 'French Polynesia', 'بولينيزيا الفرنسية', 'French Polynesian', 'بولينيزيي'),
('PG', 'Papua New Guinea', 'بابوا غينيا الجديدة', 'Papua New Guinean', 'بابوي'),
('PH', 'Philippines', 'الفليبين', 'Filipino', 'فلبيني'),
('PK', 'Pakistan', 'باكستان', 'Pakistani', 'باكستاني'),
('PL', 'Poland', 'بولندا', 'Polish', 'بولندي'),
('PN', 'Pitcairn', 'بيتكيرن', 'Pitcairn Islander', 'بيتكيرني'),
('PR', 'Puerto Rico', 'بورتو ريكو', 'Puerto Rican', 'بورتي'),
('PS', 'Palestine', 'فلسطين', 'Palestinian', 'فلسطيني'),
('PT', 'Portugal', 'البرتغال', 'Portuguese', 'برتغالي'),
('PW', 'Palau', 'بالاو', 'Palauan', 'بالاوي'),
('PY', 'Paraguay', 'باراغواي', 'Paraguayan', 'بارغاوي'),
('QA', 'Qatar', 'قطر', 'Qatari', 'قطري'),
('RE', 'Reunion Island', 'ريونيون', 'Reunionese', 'ريونيوني'),
('RO', 'Romania', 'رومانيا', 'Romanian', 'روماني'),
('RS', 'Serbia', 'صربيا', 'Serbian', 'صربي'),
('RU', 'Russian', 'روسيا', 'Russian', 'روسي'),
('RW', 'Rwanda', 'رواندا', 'Rwandan', 'رواندا'),
('SA', 'Saudi Arabia', 'المملكة العربية السعودية', 'Saudi Arabian', 'سعودي'),
('SB', 'Solomon Islands', 'جزر سليمان', 'Solomon Island', 'جزر سليمان'),
('SC', 'Seychelles', 'سيشيل', 'Seychellois', 'سيشيلي'),
('SD', 'Sudan', 'السودان', 'Sudanese', 'سوداني'),
('SE', 'Sweden', 'السويد', 'Swedish', 'سويدي'),
('SG', 'Singapore', 'سنغافورة', 'Singaporean', 'سنغافوري'),
('SH', 'Saint Helena', 'سانت هيلانة', 'St. Helenian', 'هيلاني'),
('SI', 'Slovenia', 'سلوفينيا', 'Slovenian', 'سولفيني'),
('SJ', 'Svalbard and Jan Mayen', 'سفالبارد ويان ماين', 'Svalbardian/Jan Mayenian', 'سفالبارد ويان ماين'),
('SK', 'Slovakia', 'سلوفاكيا', 'Slovak', 'سولفاكي'),
('SL', 'Sierra Leone', 'سيراليون', 'Sierra Leonean', 'سيراليوني'),
('SM', 'San Marino', 'سان مارينو', 'Sammarinese', 'ماريني'),
('SN', 'Senegal', 'السنغال', 'Senegalese', 'سنغالي'),
('SO', 'Somalia', 'الصومال', 'Somali', 'صومالي'),
('SR', 'Suriname', 'سورينام', 'Surinamese', 'سورينامي'),
('SS', 'South Sudan', 'السودان الجنوبي', 'South Sudanese', 'سوادني جنوبي'),
('ST', 'Sao Tome and Principe', 'ساو تومي وبرينسيبي', 'Sao Tomean', 'ساو تومي وبرينسيبي'),
('SV', 'El Salvador', 'إلسلفادور', 'Salvadoran', 'سلفادوري'),
('SX', 'Sint Maarten (Dutch part)', 'ساينت مارتن هولندي', 'St. Martian(Dutch)', 'ساينت مارتني هولندي'),
('SY', 'Syria', 'سوريا', 'Syrian', 'سوري'),
('SZ', 'Swaziland', 'سوازيلند', 'Swazi', 'سوازيلندي'),
('TC', 'Turks and Caicos Islands', 'جزر توركس وكايكوس', 'Turks and Caicos Islands', 'جزر توركس وكايكوس'),
('TD', 'Chad', 'تشاد', 'Chadian', 'تشادي'),
('TF', 'French Southern and Antarctic Lands', 'أراض فرنسية جنوبية وأنتارتيكية', 'French', 'أراض فرنسية جنوبية وأنتارتيكية'),
('TG', 'Togo', 'توغو', 'Togolese', 'توغي'),
('TH', 'Thailand', 'تايلندا', 'Thai', 'تايلندي'),
('TJ', 'Tajikistan', 'طاجيكستان', 'Tajikistani', 'طاجيكستاني'),
('TK', 'Tokelau', 'توكيلاو', 'Tokelaian', 'توكيلاوي'),
('TL', 'Timor-Leste', 'تيمور الشرقية', 'Timor-Lestian', 'تيموري'),
('TM', 'Turkmenistan', 'تركمانستان', 'Turkmen', 'تركمانستاني'),
('TN', 'Tunisia', 'تونس', 'Tunisian', 'تونسي'),
('TO', 'Tonga', 'تونغا', 'Tongan', 'تونغي'),
('TR', 'Turkey', 'تركيا', 'Turkish', 'تركي'),
('TT', 'Trinidad and Tobago', 'ترينيداد وتوباغو', 'Trinidadian/Tobagonian', 'ترينيداد وتوباغو'),
('TV', 'Tuvalu', 'توفالو', 'Tuvaluan', 'توفالي'),
('TW', 'Taiwan', 'تايوان', 'Taiwanese', 'تايواني'),
('TZ', 'Tanzania', 'تنزانيا', 'Tanzanian', 'تنزانيي'),
('UA', 'Ukraine', 'أوكرانيا', 'Ukrainian', 'أوكراني'),
('UG', 'Uganda', 'أوغندا', 'Ugandan', 'أوغندي'),
('UM', 'US Minor Outlying Islands', 'قائمة الولايات والمناطق الأمريكية', 'US Minor Outlying Islander', 'أمريكي'),
('US', 'United States', 'الولايات المتحدة', 'American', 'أمريكي'),
('UY', 'Uruguay', 'أورغواي', 'Uruguayan', 'أورغواي'),
('UZ', 'Uzbekistan', 'أوزباكستان', 'Uzbek', 'أوزباكستاني'),
('VA', 'Vatican City', 'فنزويلا', 'Vatican', 'فاتيكاني'),
('VC', 'Saint Vincent and the Grenadines', 'سانت فنسنت وجزر غرينادين', 'Saint Vincent and the Grenadines', 'سانت فنسنت وجزر غرينادين'),
('VE', 'Venezuela', 'فنزويلا', 'Venezuelan', 'فنزويلي'),
('VI', 'Virgin Islands (U.S.)', 'الجزر العذراء الأمريكي', 'American Virgin Islander', 'أمريكي'),
('VN', 'Vietnam', 'فيتنام', 'Vietnamese', 'فيتنامي'),
('VU', 'Vanuatu', 'فانواتو', 'Vanuatuan', 'فانواتي'),
('WF', 'Wallis and Futuna Islands', 'والس وفوتونا', 'Wallisian/Futunan', 'فوتوني'),
('WS', 'Samoa', 'ساموا', 'Samoan', 'ساموي'),
('XK', 'Kosovo', 'كوسوفو', 'Kosovar', 'كوسيفي'),
('YE', 'Yemen', 'اليمن', 'Yemeni', 'يمني'),
('YT', 'Mayotte', 'مايوت', 'Mahoran', 'مايوتي'),
('ZA', 'South Africa', 'جنوب أفريقيا', 'South African', 'أفريقي'),
('ZM', 'Zambia', 'زامبيا', 'Zambian', 'زامبياني'),
('ZW', 'Zimbabwe', 'زمبابوي', 'Zimbabwean', 'زمبابوي');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_info`
--

CREATE TABLE `doctor_info` (
  `id` int(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `specialty` varchar(250) DEFAULT NULL,
  `cv` varchar(250) DEFAULT NULL,
  `phone1` varchar(250) DEFAULT NULL,
  `phone2` varchar(250) DEFAULT NULL,
  `photo` varchar(250) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `available_time` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor_info`
--

INSERT INTO `doctor_info` (`id`, `user_id`, `specialty`, `cv`, `phone1`, `phone2`, `photo`, `description`, `available_time`, `created_at`, `updated_at`) VALUES
(0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 5, '1', NULL, '121212', '12121', NULL, 'kkkkkkkkkkkkkk', NULL, '2021-12-18 10:31:22', '2021-12-18 10:31:22');

-- --------------------------------------------------------

--
-- Table structure for table `doc_work`
--

CREATE TABLE `doc_work` (
  `id` int(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `day` varchar(250) NOT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doc_work`
--

INSERT INTO `doc_work` (`id`, `user_id`, `day`, `time_from`, `time_to`, `created_at`, `updated_at`) VALUES
(6, 5, 'Sat', '17:08:00', '23:14:00', '2021-12-18 14:05:28', '2021-12-18 14:05:28'),
(7, 5, 'Mon', NULL, NULL, '2021-12-18 14:05:28', '2021-12-18 14:05:28'),
(8, 5, 'Wed', '17:53:00', '21:48:00', '2021-12-18 14:05:28', '2021-12-18 14:05:28');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `governorates`
--

CREATE TABLE `governorates` (
  `id` int(20) NOT NULL,
  `governorate_name_ar` varchar(50) NOT NULL,
  `governorate_name_en` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `governorates`
--

INSERT INTO `governorates` (`id`, `governorate_name_ar`, `governorate_name_en`) VALUES
(1, 'القاهرة', 'Cairo'),
(2, 'الجيزة', 'Giza'),
(3, 'الأسكندرية', 'Alexandria'),
(4, 'الدقهلية', 'Dakahlia'),
(5, 'البحر الأحمر', 'Red Sea'),
(6, 'البحيرة', 'Beheira'),
(7, 'الفيوم', 'Fayoum'),
(8, 'الغربية', 'Gharbiya'),
(9, 'الإسماعلية', 'Ismailia'),
(10, 'المنوفية', 'Menofia'),
(11, 'المنيا', 'Minya'),
(12, 'القليوبية', 'Qaliubiya'),
(13, 'الوادي الجديد', 'New Valley'),
(14, 'السويس', 'Suez'),
(15, 'اسوان', 'Aswan'),
(16, 'اسيوط', 'Assiut'),
(17, 'بني سويف', 'Beni Suef'),
(18, 'بورسعيد', 'Port Said'),
(19, 'دمياط', 'Damietta'),
(20, 'الشرقية', 'Sharkia'),
(21, 'جنوب سيناء', 'South Sinai'),
(22, 'كفر الشيخ', 'Kafr Al sheikh'),
(23, 'مطروح', 'Matrouh'),
(24, 'الأقصر', 'Luxor'),
(25, 'قنا', 'Qena'),
(26, 'شمال سيناء', 'North Sinai'),
(27, 'سوهاج', 'Sohag');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` int(20) NOT NULL,
  `admin_id` int(20) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `experience` varchar(250) DEFAULT NULL,
  `category` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `job_request`
--

CREATE TABLE `job_request` (
  `id` int(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `cv` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `id_job` int(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `doctor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fullname` varchar(250) DEFAULT NULL,
  `governorate_id` varchar(2) DEFAULT NULL,
  `city_id` int(20) DEFAULT NULL,
  `adress` varchar(250) DEFAULT NULL,
  `adress2` varchar(250) DEFAULT NULL,
  `request_id` int(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `phone2` varchar(250) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` int(1) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `emergency` int(1) NOT NULL DEFAULT 0,
  `specialty_id` int(20) DEFAULT NULL,
  `service_id` int(20) DEFAULT NULL,
  `visit_time_day` date DEFAULT NULL,
  `visit_time_from` time DEFAULT NULL,
  `visit_time_to` time DEFAULT NULL,
  `arrive_on` time DEFAULT NULL,
  `doc_states` int(1) DEFAULT NULL,
  `user_states` int(1) DEFAULT NULL,
  `states` int(2) DEFAULT 1,
  `doc_rate` int(1) DEFAULT NULL,
  `user_rate` int(1) DEFAULT NULL,
  `admin_id` int(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `doctor_id`, `fullname`, `governorate_id`, `city_id`, `adress`, `adress2`, `request_id`, `phone`, `phone2`, `birth_date`, `gender`, `type`, `emergency`, `specialty_id`, `service_id`, `visit_time_day`, `visit_time_from`, `visit_time_to`, `arrive_on`, `doc_states`, `user_states`, `states`, `doc_rate`, `user_rate`, `admin_id`, `created_at`, `updated_at`) VALUES
(0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(7, 3, 5, 'qqqqqqq', '2', 2, 'qqwqwqwqqqqwqwq', 'cvcvcvccv', NULL, '01121426196', '1111111111111111111112222', NULL, NULL, NULL, 0, 1, 1, '2021-12-20', '15:29:00', '20:29:00', NULL, NULL, NULL, 29, NULL, NULL, NULL, '2021-12-20 17:11:33', '2021-12-26 15:33:32'),
(9, 2, 5, 'Mohamed Rafaat Mohamed Mohamed Kamel', '2', 2, 'شرخ 45', 'cvcvcvccv', NULL, '01121426196', '222222', NULL, NULL, NULL, 0, 1, 1, '2021-12-22', '21:19:00', '21:19:00', NULL, NULL, NULL, 4, NULL, NULL, NULL, '2021-12-20 17:18:04', '2021-12-26 15:47:05'),
(11, 2, 5, 'modd1 ra144444', '3', 110, 'qqwweerrtt', '11115qqwwqqw', 3, '01121426196', '000000007878787', '1996-10-01', 2, NULL, 0, 1, NULL, '2021-12-18', '15:42:00', '16:42:00', NULL, NULL, NULL, 2, NULL, NULL, 1, '2021-12-21 15:28:23', '2021-12-26 15:50:38'),
(12, 2, 5, 'modd1 ra1', '3', 110, 'qqwweerrtt', NULL, NULL, '01121426196', '00000000', '1996-10-01', 2, NULL, 0, 1, NULL, '2021-12-15', '22:16:00', '20:19:00', NULL, NULL, NULL, 29, NULL, NULL, 1, '2021-12-22 16:24:26', '2021-12-26 15:41:33'),
(14, 3, 5, 'aa bb', '2', 3, 'qqwqwqwqqqqwqwq', 'cvcvcvccv', NULL, '011214261961', NULL, '2015-02-25', 1, NULL, 0, 1, NULL, '2021-12-20', '22:26:00', '12:26:00', NULL, NULL, NULL, 3, NULL, NULL, 1, '2021-12-22 16:26:45', '2021-12-26 15:53:51'),
(15, 2, 5, 'modd1 ra1', '3', 110, 'qqwweerrtt', NULL, 7, '01121426196', '00000000', '1996-10-01', 2, NULL, 0, 1, NULL, '2021-12-28', '20:31:00', '20:31:00', NULL, NULL, NULL, 1, NULL, NULL, 1, '2021-12-22 16:27:18', '2021-12-22 16:27:18'),
(16, 2, 5, 'Mohamed Rafaat Mohamed Mohamed Kamel', '3', 110, '10 Intersection 455 with 534', '5', NULL, '01121426196', '00000000', '1996-10-01', 2, NULL, 0, 1, NULL, '2021-12-14', '20:47:00', '18:47:00', NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-12-26 14:47:45', '2021-12-26 14:47:45'),
(17, 2, 5, 'modd1 ra1', '3', 110, 'qqwweerrtt', NULL, 1, '01121426196', '00000000', '1996-10-01', 2, 1, 0, 1, NULL, '2021-11-28', '12:56:00', '20:56:00', NULL, NULL, NULL, 1, NULL, NULL, 1, '2021-12-26 14:57:50', '2021-12-26 14:57:50');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `protfolio_service`
--

CREATE TABLE `protfolio_service` (
  `id` int(20) NOT NULL,
  `admin_id` int(20) NOT NULL,
  `link` varchar(250) DEFAULT NULL,
  `path` varchar(250) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `sort` int(5) NOT NULL DEFAULT 100,
  `category` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `phone` varchar(250) NOT NULL,
  `specialty_id` int(20) DEFAULT NULL,
  `service_id` int(20) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `emergency` int(1) NOT NULL DEFAULT 0,
  `call_him` int(1) NOT NULL DEFAULT 0,
  `call_him_time` datetime DEFAULT NULL,
  `visit_time_day` date DEFAULT NULL,
  `visit_time_from` time DEFAULT NULL,
  `visit_time_to` time DEFAULT NULL,
  `state` int(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `user_id`, `phone`, `specialty_id`, `service_id`, `type`, `emergency`, `call_him`, `call_him_time`, `visit_time_day`, `visit_time_from`, `visit_time_to`, `state`, `created_at`, `updated_at`) VALUES
(1, 5, '01121426196', 1, NULL, 1, 1, 0, NULL, NULL, NULL, NULL, 1, '2021-12-18 10:58:49', '2021-12-26 14:57:50'),
(2, 5, '01121426196', NULL, 1, 2, 0, 0, NULL, '2021-12-08', '15:08:00', '15:11:00', 5, '2021-12-18 11:05:26', '2021-12-26 14:07:01'),
(3, 2, '01121426196', 1, NULL, 3, 0, 0, NULL, '2021-12-18', '15:42:00', '16:42:00', 1, '2021-12-18 11:42:10', '2021-12-21 15:28:22'),
(4, NULL, '11111111111111111111111', 1, NULL, 1, 1, 0, NULL, NULL, NULL, NULL, 0, '2021-12-18 16:09:47', '2021-12-18 16:09:47'),
(5, NULL, '01121426196', NULL, 1, 2, 0, 0, NULL, '2021-12-17', '20:27:00', '20:29:00', 0, '2021-12-18 16:27:11', '2021-12-18 16:27:11'),
(6, NULL, '01121426196', 1, NULL, 3, 0, 0, NULL, '2021-12-05', '23:27:00', '20:29:00', 0, '2021-12-18 16:27:42', '2021-12-18 16:27:42'),
(7, 2, '01121426196', 1, NULL, 1, 1, 0, NULL, NULL, NULL, NULL, 1, '2021-12-22 13:50:50', '2021-12-22 16:27:18'),
(8, 2, '01121426196', 1, NULL, 1, 1, 0, NULL, NULL, NULL, NULL, 5, '2021-12-26 10:19:58', '2021-12-26 13:59:00'),
(9, 2, '01121426196', 1, NULL, 3, 0, 0, NULL, '2021-12-14', '18:20:00', '22:20:00', 5, '2021-12-26 13:20:23', '2021-12-26 13:54:49'),
(10, 2, '01121426196', 1, NULL, 1, 1, 0, NULL, NULL, NULL, NULL, 5, '2021-12-26 14:01:46', '2021-12-26 14:01:57');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `created_at`, `updated_at`) VALUES
(0, 'Super Admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_info`
--

CREATE TABLE `role_info` (
  `id` int(20) NOT NULL,
  `role_id` int(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `have_permission` int(1) NOT NULL,
  `admin_id` int(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(20) NOT NULL,
  `name_ar` varchar(250) NOT NULL,
  `name_en` varchar(250) NOT NULL,
  `admin_id` int(20) NOT NULL,
  `disabled` int(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `name_ar`, `name_en`, `admin_id`, `disabled`, `created_at`, `updated_at`) VALUES
(1, 'ar namee', 'eng namee', 1, 0, '2021-12-18 11:01:58', '2021-12-19 11:09:09');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `value` varchar(250) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `specialty`
--

CREATE TABLE `specialty` (
  `id` int(20) NOT NULL,
  `name_ar` varchar(250) NOT NULL,
  `name_en` varchar(250) NOT NULL,
  `admin_id` int(20) NOT NULL,
  `disabled` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `specialty`
--

INSERT INTO `specialty` (`id`, `name_ar`, `name_en`, `admin_id`, `disabled`, `created_at`, `updated_at`) VALUES
(1, 'aa ar', 'aa en', 1, 0, '2021-12-15 10:25:23', '2021-12-15 10:25:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lname` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(1) NOT NULL DEFAULT 1,
  `verification` int(1) DEFAULT 0,
  `mobile` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` int(1) DEFAULT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality_code` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `governorate_id` int(20) DEFAULT NULL,
  `city_id` int(20) DEFAULT NULL,
  `address` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adress2` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_owner_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_num` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `username`, `birth_date`, `email`, `phone`, `type`, `verification`, `mobile`, `gender`, `title`, `nationality_code`, `governorate_id`, `city_id`, `address`, `adress2`, `account_owner_name`, `account_num`, `bank_name`, `identity_id`, `passport_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'modd1', 'ra1', 'mo ra1', '1996-10-01', 'fffff@fff.com', '01121426196', 1, 0, '00000000', 2, 'Mrs', 'EG', 3, 110, 'qqwweerrtt', NULL, 'fddffff', '1000', 'ddfdfdfdf', '11111111111111', '101010', NULL, '$2y$10$qETIE2sIIwGNHe4j/3cd8.N740nIfeq6pmbnrutKcz0O200..O9vC', 'rdgF0SCYvJIGlD8HeMEmb9a4ofbucZ0GB6BqzCR5rjSCPoDsPkQSGImMsqnd', '2021-12-14 13:37:47', '2021-12-14 15:05:20'),
(3, 'aa', 'bb', 'aaaaammmmm', '2015-02-25', 'devmrm01@gmail.com', '011214261961', 3, 0, NULL, 1, 'Mr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$wAFcbpOFxl164EN90mFSQeGyvLWGuIox/3qV20aeEHY3aOmyOBdOW', NULL, '2021-12-15 10:19:48', '2021-12-15 10:24:43'),
(4, 'aa', 'bb', 'aabb', '2021-12-16', 'bb@aa.aa', '1111111111', 1, 0, NULL, 1, 'Mr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$dRhBuT8pQvna.H8hruNnyuKr0a/RXgvleYDjfRxxQBkvrhgplvqHW', 'u1OH8WrDA2PB4vv3uXLvtgb4RSQoVahutBLemJvEAXtEiwq7h4rKcE0VrdNa', '2021-12-18 10:03:01', '2021-12-18 10:03:01'),
(5, 'dd', 'dd', 'ddDD', '2021-12-01', 'dd@dd.dd', '2222222222', 2, 1, NULL, 1, 'Mr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$8B2P9xvOFxu.cQUKhTzGB.DF5iuvKpLQLUnoNTIjn14y4niH1q.pS', 'aeJpmvBAyVm8e5nYU4rLUazeJaK645mRYX90AptmFjKiGtrEIu45Q3Sh6KkN', '2021-12-18 10:05:47', '2021-12-18 14:56:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_info`
--
ALTER TABLE `company_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_code`);

--
-- Indexes for table `doctor_info`
--
ALTER TABLE `doctor_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `doc_work`
--
ALTER TABLE `doc_work`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_id` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `governorates`
--
ALTER TABLE `governorates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `job_request`
--
ALTER TABLE `job_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_job` (`id_job`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `specialty_id` (`specialty_id`),
  ADD KEY `request_id` (`request_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `protfolio_service`
--
ALTER TABLE `protfolio_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `specialty_id` (`specialty_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_info`
--
ALTER TABLE `role_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specialty`
--
ALTER TABLE `specialty`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `governorate_id` (`governorate_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=397;

--
-- AUTO_INCREMENT for table `company_info`
--
ALTER TABLE `company_info`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctor_info`
--
ALTER TABLE `doctor_info`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doc_work`
--
ALTER TABLE `doc_work`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `governorates`
--
ALTER TABLE `governorates`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_request`
--
ALTER TABLE `job_request`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `protfolio_service`
--
ALTER TABLE `protfolio_service`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role_info`
--
ALTER TABLE `role_info`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `specialty`
--
ALTER TABLE `specialty`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `company_info`
--
ALTER TABLE `company_info`
  ADD CONSTRAINT `company_info_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `doctor_info`
--
ALTER TABLE `doctor_info`
  ADD CONSTRAINT `doctor_info_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `doc_work`
--
ALTER TABLE `doc_work`
  ADD CONSTRAINT `doc_work_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `job_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_request`
--
ALTER TABLE `job_request`
  ADD CONSTRAINT `job_request_ibfk_1` FOREIGN KEY (`id_job`) REFERENCES `job` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`),
  ADD CONSTRAINT `orders_ibfk_5` FOREIGN KEY (`specialty_id`) REFERENCES `specialty` (`id`),
  ADD CONSTRAINT `orders_ibfk_6` FOREIGN KEY (`request_id`) REFERENCES `request` (`id`),
  ADD CONSTRAINT `orders_ibfk_7` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`);

--
-- Constraints for table `protfolio_service`
--
ALTER TABLE `protfolio_service`
  ADD CONSTRAINT `protfolio_service_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `request_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `request_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`),
  ADD CONSTRAINT `request_ibfk_3` FOREIGN KEY (`specialty_id`) REFERENCES `specialty` (`id`);

--
-- Constraints for table `role_info`
--
ALTER TABLE `role_info`
  ADD CONSTRAINT `role_info_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`),
  ADD CONSTRAINT `role_info_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`);

--
-- Constraints for table `specialty`
--
ALTER TABLE `specialty`
  ADD CONSTRAINT `specialty_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`governorate_id`) REFERENCES `governorates` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
