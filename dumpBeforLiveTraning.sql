-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: care-hub.cmi4i0yhkbdc.us-east-1.rds.amazonaws.com    Database: care_hub
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` bigint unsigned DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_permission_foreign` (`permission`),
  CONSTRAINT `admin_permission_foreign` FOREIGN KEY (`permission`) REFERENCES `role` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Admin','admin@code-flex.com','$2y$10$8myWRaTmc9L9bP4O7GQUe.pd5dzIrMddtEoCq.rQwcWogb6FuIY.a',NULL,0,'mcdo6rGTMEGAtzqGw5gdJ1ijVdcg8r1bKaLnPWKAge2qyktPNQLmSd3Cjmr8',NULL,NULL),(2,'Anas','anas@care-hub.net','$2y$10$hrFaIvcAkAMwMd4upFvbKepTQmoB9jaQJl7O5sw9VEicYqYXW9ufq',NULL,0,'CpLx3IQlcgwlL4BKHbf6duvw3jyoJg0X4PrCv4e3mWBgXnuhiXn5rFHgPyVr','2022-02-13 11:03:40','2022-02-13 11:03:40'),(3,'test','tes@test.com','$2y$10$gnscx.iAF8A9xR0cdt7PjufM.03upugluVAgcTVifrbggUrehd7bS',NULL,0,NULL,'2022-02-13 11:19:35','2022-02-13 11:19:35'),(4,'Maryam Hatem','m.hatem@care-hub.net','$2y$10$vpjAB9YZPf4F9C4rZZyVpe0lyASJSLkgG3CNJZZdU1Qv9JoYGwJAC',NULL,101,'JWCODC3R3nHFRj5iqWFleYg8rwNOl0FvuFOuX4eNs4BgoGGZUWhb4QKdvISJ','2022-02-19 14:06:58','2022-02-19 14:06:58'),(5,'Yousef','yousef@care-hub.net','$2y$10$ZF6Hkly.W46x4npisI1Ime72iBJ8FX26cbvB66naYtNOhBfAIFUU6',NULL,101,NULL,'2022-02-19 14:11:32','2022-02-19 14:11:32'),(6,'Meryam Hassan','m.hassan@care-hub.net','$2y$10$ioBK.w9bqW3E7xt72ArAtOZarBCR6yfZDIMgC0j4zoK0IWuNHTDFe',NULL,101,NULL,'2022-02-19 14:12:49','2022-02-19 14:12:49'),(7,'Mohamed Mostafa','mohamed.mostafa@care-hub.net','$2y$10$9doij2xtRnKHf.Nfvksq2OKAbyR3v/J62oPky4AmrHtJBDE0CJqlK',NULL,101,NULL,'2022-02-19 14:13:27','2022-02-20 17:16:29'),(8,'Yara','y.emad@care-hub.net','$2y$10$ZubSAiHXKRqrU0AJySdqI.LTOVOhv5.NKW4D8GQZOF9olEz3Usk4O',NULL,101,NULL,'2022-02-19 14:14:05','2022-02-20 17:16:42'),(9,'alaa','alaa@care-hub.net','$2y$10$ElYLogOsLJ1PhYN8py7P9.oZ4JYXep7vPjTqZkhJhwKzA3j.c5Q/y',NULL,101,NULL,'2022-02-19 14:15:09','2022-02-19 14:15:09'),(10,'Ebraheem','ebraheem@care-hub.net','$2y$10$NpHxIx5iT4DFY5YFKZub1.tEW06jW8g00OggNnpMWCWvpDtOif4H6',NULL,101,NULL,'2022-02-19 14:24:27','2022-02-19 14:24:27'),(11,'Salma Ebrahim','z.ibrahim@care-hub.net','$2y$10$V3qpbpxPAr4/Ha5lxg6Htuzo5IkVsAGxmxd5LR2MuSGYescNRZtGC',NULL,102,NULL,'2022-02-20 17:18:12','2022-02-20 17:18:12'),(12,'Mariam Mosallam','m.mosllum@care-hub.net','$2y$10$v.yGEDXgNU1mVHuT0sPDUevCEGh7Q0cR7RnTCNyysXAFOTl0x80oC',NULL,102,NULL,'2022-02-20 17:18:36','2022-02-20 17:18:36'),(13,'Kholoud Abdelwahab','k.abdelwhab@care-hub.net','$2y$10$WOmrw4TIucUPvBuz8Z299OqV3LG17oAES8BMaV9csHblSw/bAbnNK',NULL,102,NULL,'2022-02-20 17:19:12','2022-02-20 17:19:12'),(14,'Assem','a.assem@care-hub.net','$2y$10$xTszsIKzbmzj./ePcj4v3uQjEn2OnQnn2uzlXIDIRMDzeR1M0gC3G',NULL,102,NULL,'2022-02-20 17:19:31','2022-02-20 17:19:31'),(15,'Ammar Atef','a.atef@care-hub.net','$2y$10$aM6z9jTyjSy3TMJXbilI5.dNsrjifAOIZVjcQS9d9CsgzhSGTDZqe',NULL,102,NULL,'2022-02-20 17:19:47','2022-02-20 17:19:47'),(16,'Heba Elshamy','h.elshamy@care-hub.net','$2y$10$QSWXQ1NzFJNKDoZOMt/Vgu6/eCjSgcT0Su14xfgoeEmBh19mmSqdq',NULL,103,NULL,'2022-02-20 17:21:14','2022-02-20 17:21:14'),(17,'Amira hany','a.hany@care-hub.net','$2y$10$f8ErPnR9/5bCugazyvAct.NOBCXDuiqEs4hmZmvJIVrwbpGxE3RJO',NULL,103,'c3noajOGP9uawHggvbx2CCVUoBqgDwHhJ1BSBvawAsiWQkLtsWsQJWSkpvRn','2022-02-20 17:21:37','2022-02-20 17:21:37'),(18,'Mohamed Hamouda','m.hamouda@care-hub.net','$2y$10$KMa7OkdhNaL572p3T.RwD.dxgBOGDFF9yTicL1Ho0FlPx6x696Doq',NULL,103,NULL,'2022-02-20 17:21:55','2022-02-20 17:21:55'),(19,'Ziad Mohamed','ziad.mohamed@care-hub.net','$2y$10$V1mYvyXduBbbsltJt3DHHOIdK.DmIE0U/f0ZPVW70vrOUDzxeH1xu',NULL,103,NULL,'2022-02-20 17:22:09','2022-02-20 17:22:09'),(20,'Kholoud Adel','k.adel@care-hub.net','$2y$10$mH0Znjyubofsk87V/wO54eVXZHlgpgp8FZFT9dzUR5IOy..J94ssy',NULL,103,NULL,'2022-02-20 17:22:28','2022-02-20 17:22:28'),(21,'Mohamed Mahmoud','m.mahmoud@care-hub.net','$2y$10$9/HX8f0oS3/0DjdrTCojyurj9H48bM6Rzy.98v0GHGIwjiVlj7t2q',NULL,103,NULL,'2022-02-20 17:22:47','2022-02-20 17:22:47'),(22,'Aya seif','a.seif@care-hub.net','$2y$10$NWRNTptVf6197yu0nKhbAuC0RQQNVPX5sehjTSPIMrL2oI7RL.1y.',NULL,103,NULL,'2022-02-20 17:25:01','2022-02-20 17:25:01'),(23,'Amr Hesham','a.hesham@care-hub.net','$2y$10$Jyasqn1elnajBj1SBiLAc.tXkstLeDQ1Tm6hyMwgKmrB0JaixOUeW',NULL,101,'0a35myE273IvDc0v4MKA7JgHRfR3I8j1U3lPjnqp1g9jPcKqqCsLvotspRe9','2022-02-20 17:25:28','2022-02-20 17:25:28'),(24,'tayseer','tayseer.mohamed@care-hub.net','$2y$10$sY.LMTJkRLKuA.tcVfinJefIjBGx7reFqkpEwYYoyyJS7MEddNVCK',NULL,103,NULL,'2022-02-21 11:56:50','2022-02-21 11:56:50'),(25,'Salma Badry','s.ibrahim@care-hub.net','$2y$10$Dwe2d0.vju/5vK4/aThZv.ijNZguY84x0kVVQkDoo64o1pKGEkbRS',NULL,102,NULL,'2022-02-21 12:35:25','2022-02-21 12:35:25'),(26,'Salma Badry','s.ibrahim@care-hub.net','$2y$10$xiuALHM/G.a.3vVQyMDs5eWrjvgKDIIUVSJ5p52fJFQT9a0Qx9yve',NULL,102,NULL,'2022-02-21 12:37:27','2022-02-21 12:37:27');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `governorate_id` bigint unsigned DEFAULT NULL,
  `city_name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cities_governorate_id_foreign` (`governorate_id`),
  CONSTRAINT `cities_governorate_id_foreign` FOREIGN KEY (`governorate_id`) REFERENCES `governorates` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=397 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,1,'15 مايو','15 May'),(2,1,'الازبكية','Al Azbakeyah'),(3,1,'البساتين','Al Basatin'),(4,1,'التبين','Tebin'),(5,1,'الخليفة','El-Khalifa'),(6,1,'الدراسة','El darrasa'),(7,1,'الدرب الاحمر','Aldarb Alahmar'),(8,1,'الزاوية الحمراء','Zawya al-Hamra'),(9,1,'الزيتون','El-Zaytoun'),(10,1,'الساحل','Sahel'),(11,1,'السلام','El Salam'),(12,1,'السيدة زينب','Sayeda Zeinab'),(13,1,'الشرابية','El Sharabeya'),(14,1,'مدينة الشروق','Shorouk'),(15,1,'الظاهر','El Daher'),(16,1,'العتبة','Ataba'),(17,1,'القاهرة الجديدة','New Cairo'),(18,1,'المرج','El Marg'),(19,1,'عزبة النخل','Ezbet el Nakhl'),(20,1,'المطرية','Matareya'),(21,1,'المعادى','Maadi'),(22,1,'المعصرة','Maasara'),(23,1,'المقطم','Mokattam'),(24,1,'المنيل','Manyal'),(25,1,'الموسكى','Mosky'),(26,1,'النزهة','Nozha'),(27,1,'الوايلى','Waily'),(28,1,'باب الشعرية','Bab al-Shereia'),(29,1,'بولاق','Bolaq'),(30,1,'جاردن سيتى','Garden City'),(31,1,'حدائق القبة','Hadayek El-Kobba'),(32,1,'حلوان','Helwan'),(33,1,'دار السلام','Dar Al Salam'),(34,1,'شبرا','Shubra'),(35,1,'طره','Tura'),(36,1,'عابدين','Abdeen'),(37,1,'عباسية','Abaseya'),(38,1,'عين شمس','Ain Shams'),(39,1,'مدينة نصر','Nasr City'),(40,1,'مصر الجديدة','New Heliopolis'),(41,1,'مصر القديمة','Masr Al Qadima'),(42,1,'منشية ناصر','Mansheya Nasir'),(43,1,'مدينة بدر','Badr City'),(44,1,'مدينة العبور','Obour City'),(45,1,'وسط البلد','Cairo Downtown'),(46,1,'الزمالك','Zamalek'),(47,1,'قصر النيل','Kasr El Nile'),(48,1,'الرحاب','Rehab'),(49,1,'القطامية','Katameya'),(50,1,'مدينتي','Madinty'),(51,1,'روض الفرج','Rod Alfarag'),(52,1,'شيراتون','Sheraton'),(53,1,'الجمالية','El-Gamaleya'),(54,1,'العاشر من رمضان','10th of Ramadan City'),(55,1,'الحلمية','Helmeyat Alzaytoun'),(56,1,'النزهة الجديدة','New Nozha'),(57,1,'العاصمة الإدارية','Capital New'),(58,2,'الجيزة','Giza'),(59,2,'السادس من أكتوبر','Sixth of October'),(60,2,'الشيخ زايد','Cheikh Zayed'),(61,2,'الحوامدية','Hawamdiyah'),(62,2,'البدرشين','Al Badrasheen'),(63,2,'الصف','Saf'),(64,2,'أطفيح','Atfih'),(65,2,'العياط','Al Ayat'),(66,2,'الباويطي','Al-Bawaiti'),(67,2,'منشأة القناطر','ManshiyetAl Qanater'),(68,2,'أوسيم','Oaseem'),(69,2,'كرداسة','Kerdasa'),(70,2,'أبو النمرس','Abu Nomros'),(71,2,'كفر غطاطي','Kafr Ghati'),(72,2,'منشأة البكاري','Manshiyet Al Bakari'),(73,2,'الدقى','Dokki'),(74,2,'العجوزة','Agouza'),(75,2,'الهرم','Haram'),(76,2,'الوراق','Warraq'),(77,2,'امبابة','Imbaba'),(78,2,'بولاق الدكرور','Boulaq Dakrour'),(79,2,'الواحات البحرية','Al Wahat Al Baharia'),(80,2,'العمرانية','Omraneya'),(81,2,'المنيب','Moneeb'),(82,2,'بين السرايات','Bin Alsarayat'),(83,2,'الكيت كات','Kit Kat'),(84,2,'المهندسين','Mohandessin'),(85,2,'فيصل','Faisal'),(86,2,'أبو رواش','Abu Rawash'),(87,2,'حدائق الأهرام','Hadayek Alahram'),(88,2,'الحرانية','Haraneya'),(89,2,'حدائق اكتوبر','Hadayek October'),(90,2,'صفط اللبن','Saft Allaban'),(91,2,'القرية الذكية','Smart Village'),(92,2,'ارض اللواء','Ard Ellwaa'),(93,3,'ابو قير','Abu Qir'),(94,3,'الابراهيمية','Al Ibrahimeyah'),(95,3,'الأزاريطة','Azarita'),(96,3,'الانفوشى','Anfoushi'),(97,3,'الدخيلة','Dekheila'),(98,3,'السيوف','El Soyof'),(99,3,'العامرية','Ameria'),(100,3,'اللبان','El Labban'),(101,3,'المفروزة','Al Mafrouza'),(102,3,'المنتزه','El Montaza'),(103,3,'المنشية','Mansheya'),(104,3,'الناصرية','Naseria'),(105,3,'امبروزو','Ambrozo'),(106,3,'باب شرق','Bab Sharq'),(107,3,'برج العرب','Bourj Alarab'),(108,3,'ستانلى','Stanley'),(109,3,'سموحة','Smouha'),(110,3,'سيدى بشر','Sidi Bishr'),(111,3,'شدس','Shads'),(112,3,'غيط العنب','Gheet Alenab'),(113,3,'فلمينج','Fleming'),(114,3,'فيكتوريا','Victoria'),(115,3,'كامب شيزار','Camp Shizar'),(116,3,'كرموز','Karmooz'),(117,3,'محطة الرمل','Mahta Alraml'),(118,3,'مينا البصل','Mina El-Basal'),(119,3,'العصافرة','Asafra'),(120,3,'العجمي','Agamy'),(121,3,'بكوس','Bakos'),(122,3,'بولكلي','Boulkly'),(123,3,'كليوباترا','Cleopatra'),(124,3,'جليم','Glim'),(125,3,'المعمورة','Al Mamurah'),(126,3,'المندرة','Al Mandara'),(127,3,'محرم بك','Moharam Bek'),(128,3,'الشاطبي','Elshatby'),(129,3,'سيدي جابر','Sidi Gaber'),(130,3,'الساحل الشمالي','North Coast/sahel'),(131,3,'الحضرة','Alhadra'),(132,3,'العطارين','Alattarin'),(133,3,'سيدي كرير','Sidi Kerir'),(134,3,'الجمرك','Elgomrok'),(135,3,'المكس','Al Max'),(136,3,'مارينا','Marina'),(137,4,'المنصورة','Mansoura'),(138,4,'طلخا','Talkha'),(139,4,'ميت غمر','Mitt Ghamr'),(140,4,'دكرنس','Dekernes'),(141,4,'أجا','Aga'),(142,4,'منية النصر','Menia El Nasr'),(143,4,'السنبلاوين','Sinbillawin'),(144,4,'الكردي','El Kurdi'),(145,4,'بني عبيد','Bani Ubaid'),(146,4,'المنزلة','Al Manzala'),(147,4,'تمي الأمديد','tami al\'amdid'),(148,4,'الجمالية','aljamalia'),(149,4,'شربين','Sherbin'),(150,4,'المطرية','Mataria'),(151,4,'بلقاس','Belqas'),(152,4,'ميت سلسيل','Meet Salsil'),(153,4,'جمصة','Gamasa'),(154,4,'محلة دمنة','Mahalat Damana'),(155,4,'نبروه','Nabroh'),(156,5,'الغردقة','Hurghada'),(157,5,'رأس غارب','Ras Ghareb'),(158,5,'سفاجا','Safaga'),(159,5,'القصير','El Qusiar'),(160,5,'مرسى علم','Marsa Alam'),(161,5,'الشلاتين','Shalatin'),(162,5,'حلايب','Halaib'),(163,5,'الدهار','Aldahar'),(164,6,'دمنهور','Damanhour'),(165,6,'كفر الدوار','Kafr El Dawar'),(166,6,'رشيد','Rashid'),(167,6,'إدكو','Edco'),(168,6,'أبو المطامير','Abu al-Matamir'),(169,6,'أبو حمص','Abu Homs'),(170,6,'الدلنجات','Delengat'),(171,6,'المحمودية','Mahmoudiyah'),(172,6,'الرحمانية','Rahmaniyah'),(173,6,'إيتاي البارود','Itai Baroud'),(174,6,'حوش عيسى','Housh Eissa'),(175,6,'شبراخيت','Shubrakhit'),(176,6,'كوم حمادة','Kom Hamada'),(177,6,'بدر','Badr'),(178,6,'وادي النطرون','Wadi Natrun'),(179,6,'النوبارية الجديدة','New Nubaria'),(180,6,'النوبارية','Alnoubareya'),(181,7,'الفيوم','Fayoum'),(182,7,'الفيوم الجديدة','Fayoum El Gedida'),(183,7,'طامية','Tamiya'),(184,7,'سنورس','Snores'),(185,7,'إطسا','Etsa'),(186,7,'إبشواي','Epschway'),(187,7,'يوسف الصديق','Yusuf El Sediaq'),(188,7,'الحادقة','Hadqa'),(189,7,'اطسا','Atsa'),(190,7,'الجامعة','Algamaa'),(191,7,'السيالة','Sayala'),(192,8,'طنطا','Tanta'),(193,8,'المحلة الكبرى','Al Mahalla Al Kobra'),(194,8,'كفر الزيات','Kafr El Zayat'),(195,8,'زفتى','Zefta'),(196,8,'السنطة','El Santa'),(197,8,'قطور','Qutour'),(198,8,'بسيون','Basion'),(199,8,'سمنود','Samannoud'),(200,9,'الإسماعيلية','Ismailia'),(201,9,'فايد','Fayed'),(202,9,'القنطرة شرق','Qantara Sharq'),(203,9,'القنطرة غرب','Qantara Gharb'),(204,9,'التل الكبير','El Tal El Kabier'),(205,9,'أبو صوير','Abu Sawir'),(206,9,'القصاصين الجديدة','Kasasien El Gedida'),(207,9,'نفيشة','Nefesha'),(208,9,'الشيخ زايد','Sheikh Zayed'),(209,10,'شبين الكوم','Shbeen El Koom'),(210,10,'مدينة السادات','Sadat City'),(211,10,'منوف','Menouf'),(212,10,'سرس الليان','Sars El-Layan'),(213,10,'أشمون','Ashmon'),(214,10,'الباجور','Al Bagor'),(215,10,'قويسنا','Quesna'),(216,10,'بركة السبع','Berkat El Saba'),(217,10,'تلا','Tala'),(218,10,'الشهداء','Al Shohada'),(219,11,'المنيا','Minya'),(220,11,'المنيا الجديدة','Minya El Gedida'),(221,11,'العدوة','El Adwa'),(222,11,'مغاغة','Magagha'),(223,11,'بني مزار','Bani Mazar'),(224,11,'مطاي','Mattay'),(225,11,'سمالوط','Samalut'),(226,11,'المدينة الفكرية','Madinat El Fekria'),(227,11,'ملوي','Meloy'),(228,11,'دير مواس','Deir Mawas'),(229,11,'ابو قرقاص','Abu Qurqas'),(230,11,'ارض سلطان','Ard Sultan'),(231,12,'بنها','Banha'),(232,12,'قليوب','Qalyub'),(233,12,'شبرا الخيمة','Shubra Al Khaimah'),(234,12,'القناطر الخيرية','Al Qanater Charity'),(235,12,'الخانكة','Khanka'),(236,12,'كفر شكر','Kafr Shukr'),(237,12,'طوخ','Tukh'),(238,12,'قها','Qaha'),(239,12,'العبور','Obour'),(240,12,'الخصوص','Khosous'),(241,12,'شبين القناطر','Shibin Al Qanater'),(242,12,'مسطرد','Mostorod'),(243,13,'الخارجة','El Kharga'),(244,13,'باريس','Paris'),(245,13,'موط','Mout'),(246,13,'الفرافرة','Farafra'),(247,13,'بلاط','Balat'),(248,13,'الداخلة','Dakhla'),(249,14,'السويس','Suez'),(250,14,'الجناين','Alganayen'),(251,14,'عتاقة','Ataqah'),(252,14,'العين السخنة','Ain Sokhna'),(253,14,'فيصل','Faysal'),(254,15,'أسوان','Aswan'),(255,15,'أسوان الجديدة','Aswan El Gedida'),(256,15,'دراو','Drau'),(257,15,'كوم أمبو','Kom Ombo'),(258,15,'نصر النوبة','Nasr Al Nuba'),(259,15,'كلابشة','Kalabsha'),(260,15,'إدفو','Edfu'),(261,15,'الرديسية','Al-Radisiyah'),(262,15,'البصيلية','Al Basilia'),(263,15,'السباعية','Al Sibaeia'),(264,15,'ابوسمبل السياحية','Abo Simbl Al Siyahia'),(265,15,'مرسى علم','Marsa Alam'),(266,16,'أسيوط','Assiut'),(267,16,'أسيوط الجديدة','Assiut El Gedida'),(268,16,'ديروط','Dayrout'),(269,16,'منفلوط','Manfalut'),(270,16,'القوصية','Qusiya'),(271,16,'أبنوب','Abnoub'),(272,16,'أبو تيج','Abu Tig'),(273,16,'الغنايم','El Ghanaim'),(274,16,'ساحل سليم','Sahel Selim'),(275,16,'البداري','El Badari'),(276,16,'صدفا','Sidfa'),(277,17,'بني سويف','Bani Sweif'),(278,17,'بني سويف الجديدة','Beni Suef El Gedida'),(279,17,'الواسطى','Al Wasta'),(280,17,'ناصر','Naser'),(281,17,'إهناسيا','Ehnasia'),(282,17,'ببا','beba'),(283,17,'الفشن','Fashn'),(284,17,'سمسطا','Somasta'),(285,17,'الاباصيرى','Alabbaseri'),(286,17,'مقبل','Mokbel'),(287,18,'بورسعيد','PorSaid'),(288,18,'بورفؤاد','Port Fouad'),(289,18,'العرب','Alarab'),(290,18,'حى الزهور','Zohour'),(291,18,'حى الشرق','Alsharq'),(292,18,'حى الضواحى','Aldawahi'),(293,18,'حى المناخ','Almanakh'),(294,18,'حى مبارك','Mubarak'),(295,19,'دمياط','Damietta'),(296,19,'دمياط الجديدة','New Damietta'),(297,19,'رأس البر','Ras El Bar'),(298,19,'فارسكور','Faraskour'),(299,19,'الزرقا','Zarqa'),(300,19,'السرو','alsaru'),(301,19,'الروضة','alruwda'),(302,19,'كفر البطيخ','Kafr El-Batikh'),(303,19,'عزبة البرج','Azbet Al Burg'),(304,19,'ميت أبو غالب','Meet Abou Ghalib'),(305,19,'كفر سعد','Kafr Saad'),(306,20,'الزقازيق','Zagazig'),(307,20,'العاشر من رمضان','Al Ashr Men Ramadan'),(308,20,'منيا القمح','Minya Al Qamh'),(309,20,'بلبيس','Belbeis'),(310,20,'مشتول السوق','Mashtoul El Souq'),(311,20,'القنايات','Qenaiat'),(312,20,'أبو حماد','Abu Hammad'),(313,20,'القرين','El Qurain'),(314,20,'ههيا','Hehia'),(315,20,'أبو كبير','Abu Kabir'),(316,20,'فاقوس','Faccus'),(317,20,'الصالحية الجديدة','El Salihia El Gedida'),(318,20,'الإبراهيمية','Al Ibrahimiyah'),(319,20,'ديرب نجم','Deirb Negm'),(320,20,'كفر صقر','Kafr Saqr'),(321,20,'أولاد صقر','Awlad Saqr'),(322,20,'الحسينية','Husseiniya'),(323,20,'صان الحجر القبلية','san alhajar alqablia'),(324,20,'منشأة أبو عمر','Manshayat Abu Omar'),(325,21,'الطور','Al Toor'),(326,21,'شرم الشيخ','Sharm El-Shaikh'),(327,21,'دهب','Dahab'),(328,21,'نويبع','Nuweiba'),(329,21,'طابا','Taba'),(330,21,'سانت كاترين','Saint Catherine'),(331,21,'أبو رديس','Abu Redis'),(332,21,'أبو زنيمة','Abu Zenaima'),(333,21,'رأس سدر','Ras Sidr'),(334,22,'كفر الشيخ','Kafr El Sheikh'),(335,22,'وسط البلد كفر الشيخ','Kafr El Sheikh Downtown'),(336,22,'دسوق','Desouq'),(337,22,'فوه','Fooh'),(338,22,'مطوبس','Metobas'),(339,22,'برج البرلس','Burg Al Burullus'),(340,22,'بلطيم','Baltim'),(341,22,'مصيف بلطيم','Masief Baltim'),(342,22,'الحامول','Hamol'),(343,22,'بيلا','Bella'),(344,22,'الرياض','Riyadh'),(345,22,'سيدي سالم','Sidi Salm'),(346,22,'قلين','Qellen'),(347,22,'سيدي غازي','Sidi Ghazi'),(348,23,'مرسى مطروح','Marsa Matrouh'),(349,23,'الحمام','El Hamam'),(350,23,'العلمين','Alamein'),(351,23,'الضبعة','Dabaa'),(352,23,'النجيلة','Al-Nagila'),(353,23,'سيدي براني','Sidi Brani'),(354,23,'السلوم','Salloum'),(355,23,'سيوة','Siwa'),(356,23,'مارينا','Marina'),(357,23,'الساحل الشمالى','North Coast'),(358,24,'الأقصر','Luxor'),(359,24,'الأقصر الجديدة','New Luxor'),(360,24,'إسنا','Esna'),(361,24,'طيبة الجديدة','New Tiba'),(362,24,'الزينية','Al ziynia'),(363,24,'البياضية','Al Bayadieh'),(364,24,'القرنة','Al Qarna'),(365,24,'أرمنت','Armant'),(366,24,'الطود','Al Tud'),(367,25,'قنا','Qena'),(368,25,'قنا الجديدة','New Qena'),(369,25,'ابو طشت','Abu Tesht'),(370,25,'نجع حمادي','Nag Hammadi'),(371,25,'دشنا','Deshna'),(372,25,'الوقف','Alwaqf'),(373,25,'قفط','Qaft'),(374,25,'نقادة','Naqada'),(375,25,'فرشوط','Farshout'),(376,25,'قوص','Quos'),(377,26,'العريش','Arish'),(378,26,'الشيخ زويد','Sheikh Zowaid'),(379,26,'نخل','Nakhl'),(380,26,'رفح','Rafah'),(381,26,'بئر العبد','Bir al-Abed'),(382,26,'الحسنة','Al Hasana'),(383,27,'سوهاج','Sohag'),(384,27,'سوهاج الجديدة','Sohag El Gedida'),(385,27,'أخميم','Akhmeem'),(386,27,'أخميم الجديدة','Akhmim El Gedida'),(387,27,'البلينا','Albalina'),(388,27,'المراغة','El Maragha'),(389,27,'المنشأة','almunsha\'a'),(390,27,'دار السلام','Dar AISalaam'),(391,27,'جرجا','Gerga'),(392,27,'جهينة الغربية','Jahina Al Gharbia'),(393,27,'ساقلته','Saqilatuh'),(394,27,'طما','Tama'),(395,27,'طهطا','Tahta'),(396,27,'الكوثر','Alkawthar');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_info`
--

DROP TABLE IF EXISTS `company_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `org_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_num` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_certificate_num` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int DEFAULT NULL,
  `pay` int DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_info_admin_id_foreign` (`admin_id`),
  CONSTRAINT `company_info_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_info`
--

LOCK TABLES `company_info` WRITE;
/*!40000 ALTER TABLE `company_info` DISABLE KEYS */;
INSERT INTO `company_info` VALUES (1,'نادي سموحة',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2022-02-14 12:35:53','2022-02-14 12:35:53'),(2,'ميد رايت',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,2,'2022-02-16 09:00:32','2022-02-16 09:00:32'),(3,'ئئئئئئئئئئ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2022-02-17 11:06:04','2022-02-17 11:06:04'),(4,'شركه كيرهب',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2022-02-17 14:23:43','2022-02-17 14:23:43'),(5,'نقابة المهندسين',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,'2022-02-22 09:34:07','2022-02-22 09:34:07'),(6,'نقابة المهندسين',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,'2022-02-22 09:49:52','2022-02-22 09:49:52'),(7,'تعاقد شركة الحمراويل أجل',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,19,'2022-02-23 13:06:40','2022-02-23 13:06:40'),(8,'تعاقد نقابه الأطباء خصم 15%',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,19,'2022-02-25 20:45:54','2022-02-25 20:45:54');
/*!40000 ALTER TABLE `company_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_enName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_arName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_enNationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_arNationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `countries_country_code_unique` (`country_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES ('AD','Andorra','أندورا','Andorran','أندوري'),('AE','United Arab Emirates','الإمارات العربية المتحدة','Emirati','إماراتي'),('AF','Afghanistan','أفغانستان','Afghan','أفغانستاني'),('AG','Antigua and Barbuda','أنتيغوا وبربودا','Antiguan','بربودي'),('AI','Anguilla','أنغويلا','Anguillan','أنغويلي'),('AL','Albania','ألبانيا','Albanian','ألباني'),('AM','Armenia','أرمينيا','Armenian','أرميني'),('AN','Netherlands Antilles','جزر الأنتيل الهولندي','Dutch Antilier','هولندي'),('AO','Angola','أنغولا','Angolan','أنقولي'),('AQ','Antarctica','أنتاركتيكا','Antarctican','أنتاركتيكي'),('AR','Argentina','الأرجنتين','Argentinian','أرجنتيني'),('AS','American Samoa','ساموا-الأمريكي','American Samoan','أمريكي سامواني'),('AT','Austria','النمسا','Austrian','نمساوي'),('AU','Australia','أستراليا','Australian','أسترالي'),('AW','Aruba','أروبه','Aruban','أوروبهيني'),('AX','Aland Islands','جزر آلاند','Aland Islander','آلاندي'),('AZ','Azerbaijan','أذربيجان','Azerbaijani','أذربيجاني'),('BA','Bosnia and Herzegovina','البوسنة و الهرسك','Bosnian / Herzegovinian','بوسني/هرسكي'),('BB','Barbados','بربادوس','Barbadian','بربادوسي'),('BD','Bangladesh','بنغلاديش','Bangladeshi','بنغلاديشي'),('BE','Belgium','بلجيكا','Belgian','بلجيكي'),('BF','Burkina Faso','بوركينا فاسو','Burkinabe','بوركيني'),('BG','Bulgaria','بلغاريا','Bulgarian','بلغاري'),('BH','Bahrain','البحرين','Bahraini','بحريني'),('BI','Burundi','بوروندي','Burundian','بورونيدي'),('BJ','Benin','بنين','Beninese','بنيني'),('BL','Saint Barthelemy','سان بارتيلمي','Saint Barthelmian','سان بارتيلمي'),('BM','Bermuda','جزر برمودا','Bermudan','برمودي'),('BN','Brunei Darussalam','بروني','Bruneian','بروني'),('BO','Bolivia','بوليفيا','Bolivian','بوليفي'),('BR','Brazil','البرازيل','Brazilian','برازيلي'),('BS','Bahamas','الباهاماس','Bahamian','باهاميسي'),('BT','Bhutan','بوتان','Bhutanese','بوتاني'),('BV','Bouvet Island','جزيرة بوفيه','Bouvetian','بوفيهي'),('BW','Botswana','بوتسوانا','Botswanan','بوتسواني'),('BY','Belarus','روسيا البيضاء','Belarusian','روسي'),('BZ','Belize','بيليز','Belizean','بيليزي'),('CA','Canada','كندا','Canadian','كندي'),('CC','Cocos (Keeling) Islands','جزر كوكوس','Cocos Islander','جزر كوكوس'),('CF','Central African Republic','جمهورية أفريقيا الوسطى','Central African','أفريقي'),('CG','Congo','الكونغو','Congolese','كونغي'),('CH','Switzerland','سويسرا','Swiss','سويسري'),('CI','Ivory Coast','ساحل العاج','Ivory Coastian','ساحل العاج'),('CK','Cook Islands','جزر كوك','Cook Islander','جزر كوك'),('CL','Chile','شيلي','Chilean','شيلي'),('CM','Cameroon','كاميرون','Cameroonian','كاميروني'),('CN','China','الصين','Chinese','صيني'),('CO','Colombia','كولومبيا','Colombian','كولومبي'),('CR','Costa Rica','كوستاريكا','Costa Rican','كوستاريكي'),('CU','Cuba','كوبا','Cuban','كوبي'),('CV','Cape Verde','الرأس الأخضر','Cape Verdean','الرأس الأخضر'),('CW','Curaçao','كوراساو','Curacian','كوراساوي'),('CX','Christmas Island','جزيرة عيد الميلاد','Christmas Islander','جزيرة عيد الميلاد'),('CY','Cyprus','قبرص','Cypriot','قبرصي'),('CZ','Czech Republic','الجمهورية التشيكية','Czech','تشيكي'),('DE','Germany','ألمانيا','German','ألماني'),('DJ','Djibouti','جيبوتي','Djiboutian','جيبوتي'),('DK','Denmark','الدانمارك','Danish','دنماركي'),('DM','Dominica','دومينيكا','Dominican','دومينيكي'),('DO','Dominican Republic','الجمهورية الدومينيكية','Dominican','دومينيكي'),('DZ','Algeria','الجزائر','Algerian','جزائري'),('EC','Ecuador','إكوادور','Ecuadorian','إكوادوري'),('EE','Estonia','استونيا','Estonian','استوني'),('EG','Egypt','مصر','Egyptian','مصري'),('EH','Western Sahara','الصحراء الغربية','Sahrawian','صحراوي'),('ER','Eritrea','إريتريا','Eritrean','إريتيري'),('ES','Spain','إسبانيا','Spanish','إسباني'),('ET','Ethiopia','أثيوبيا','Ethiopian','أثيوبي'),('FI','Finland','فنلندا','Finnish','فنلندي'),('FJ','Fiji','فيجي','Fijian','فيجي'),('FK','Falkland Islands (Malvinas)','جزر فوكلاند','Falkland Islander','فوكلاندي'),('FM','Micronesia','مايكرونيزيا','Micronesian','مايكرونيزيي'),('FO','Faroe Islands','جزر فارو','Faroese','جزر فارو'),('FR','France','فرنسا','French','فرنسي'),('GA','Gabon','الغابون','Gabonese','غابوني'),('GB','United Kingdom','المملكة المتحدة','British','بريطاني'),('GD','Grenada','غرينادا','Grenadian','غرينادي'),('GE','Georgia','جيورجيا','Georgian','جيورجي'),('GF','French Guiana','غويانا الفرنسية','French Guianese','غويانا الفرنسية'),('GG','Guernsey','غيرنزي','Guernsian','غيرنزي'),('GH','Ghana','غانا','Ghanaian','غاني'),('GI','Gibraltar','جبل طارق','Gibraltar','جبل طارق'),('GL','Greenland','جرينلاند','Greenlandic','جرينلاندي'),('GM','Gambia','غامبيا','Gambian','غامبي'),('GN','Guinea','غينيا','Guinean','غيني'),('GP','Guadeloupe','جزر جوادلوب','Guadeloupe','جزر جوادلوب'),('GQ','Equatorial Guinea','غينيا الاستوائي','Equatorial Guinean','غيني'),('GR','Greece','اليونان','Greek','يوناني'),('GS','South Georgia and the South Sandwich','المنطقة القطبية الجنوبية','South Georgia and the South Sandwich','لمنطقة القطبية الجنوبية'),('GT','Guatemala','غواتيمال','Guatemalan','غواتيمالي'),('GU','Guam','جوام','Guamanian','جوامي'),('GW','Guinea-Bissau','غينيا-بيساو','Guinea-Bissauan','غيني'),('GY','Guyana','غيانا','Guyanese','غياني'),('HK','Hong Kong','هونغ كونغ','Hongkongese','هونغ كونغي'),('HM','Heard and Mc Donald Islands','جزيرة هيرد وجزر ماكدونالد','Heard and Mc Donald Islanders','جزيرة هيرد وجزر ماكدونالد'),('HN','Honduras','هندوراس','Honduran','هندوراسي'),('HR','Croatia','كرواتيا','Croatian','كوراتي'),('HT','Haiti','هايتي','Haitian','هايتي'),('HU','Hungary','المجر','Hungarian','مجري'),('ID','Indonesia','أندونيسيا','Indonesian','أندونيسيي'),('IE','Ireland','إيرلندا','Irish','إيرلندي'),('IL','Israel','إسرائيل','Israeli','إسرائيلي'),('IM','Isle of Man','جزيرة مان','Manx','ماني'),('IN','India','الهند','Indian','هندي'),('IO','British Indian Ocean Territory','إقليم المحيط الهندي البريطاني','British Indian Ocean Territory','إقليم المحيط الهندي البريطاني'),('IQ','Iraq','العراق','Iraqi','عراقي'),('IR','Iran','إيران','Iranian','إيراني'),('IS','Iceland','آيسلندا','Icelandic','آيسلندي'),('IT','Italy','إيطاليا','Italian','إيطالي'),('JE','Jersey','جيرزي','Jersian','جيرزي'),('JM','Jamaica','جمايكا','Jamaican','جمايكي'),('JO','Jordan','الأردن','Jordanian','أردني'),('JP','Japan','اليابان','Japanese','ياباني'),('KE','Kenya','كينيا','Kenyan','كيني'),('KG','Kyrgyzstan','قيرغيزستان','Kyrgyzstani','قيرغيزستاني'),('KH','Cambodia','كمبوديا','Cambodian','كمبودي'),('KI','Kiribati','كيريباتي','I-Kiribati','كيريباتي'),('KM','Comoros','جزر القمر','Comorian','جزر القمر'),('KN','Saint Kitts and Nevis','سانت كيتس ونيفس,','Kittitian/Nevisian','سانت كيتس ونيفس'),('KP','Korea(North Korea)','كوريا الشمالية','North Korean','كوري'),('KR','Korea(South Korea)','كوريا الجنوبية','South Korean','كوري'),('KW','Kuwait','الكويت','Kuwaiti','كويتي'),('KY','Cayman Islands','جزر كايمان','Caymanian','كايماني'),('KZ','Kazakhstan','كازاخستان','Kazakh','كازاخستاني'),('LA','Lao PDR','لاوس','Laotian','لاوسي'),('LB','Lebanon','لبنان','Lebanese','لبناني'),('LC','Saint Pierre and Miquelon','سان بيير وميكلون','St. Pierre and Miquelon','سان بيير وميكلوني'),('LI','Liechtenstein','ليختنشتين','Liechtenstein','ليختنشتيني'),('LK','Sri Lanka','سريلانكا','Sri Lankian','سريلانكي'),('LR','Liberia','ليبيريا','Liberian','ليبيري'),('LS','Lesotho','ليسوتو','Basotho','ليوسيتي'),('LT','Lithuania','لتوانيا','Lithuanian','لتوانيي'),('LU','Luxembourg','لوكسمبورغ','Luxembourger','لوكسمبورغي'),('LV','Latvia','لاتفيا','Latvian','لاتيفي'),('LY','Libya','ليبيا','Libyan','ليبي'),('MA','Morocco','المغرب','Moroccan','مغربي'),('MC','Monaco','موناكو','Monacan','مونيكي'),('MD','Moldova','مولدافيا','Moldovan','مولديفي'),('ME','Montenegro','الجبل الأسود','Montenegrin','الجبل الأسود'),('MF','Saint Martin (French part)','ساينت مارتن فرنسي','St. Martian(French)','ساينت مارتني فرنسي'),('MG','Madagascar','مدغشقر','Malagasy','مدغشقري'),('MH','Marshall Islands','جزر مارشال','Marshallese','مارشالي'),('MK','Macedonia','مقدونيا','Macedonian','مقدوني'),('ML','Mali','مالي','Malian','مالي'),('MM','Myanmar','ميانمار','Myanmarian','ميانماري'),('MN','Mongolia','منغوليا','Mongolian','منغولي'),('MO','Macau','ماكاو','Macanese','ماكاوي'),('MP','Northern Mariana Islands','جزر ماريانا الشمالية','Northern Marianan','ماريني'),('MQ','Martinique','مارتينيك','Martiniquais','مارتينيكي'),('MR','Mauritania','موريتانيا','Mauritanian','موريتانيي'),('MS','Montserrat','مونتسيرات','Montserratian','مونتسيراتي'),('MT','Malta','مالطا','Maltese','مالطي'),('MU','Mauritius','موريشيوس','Mauritian','موريشيوسي'),('MV','Maldives','المالديف','Maldivian','مالديفي'),('MW','Malawi','مالاوي','Malawian','مالاوي'),('MX','Mexico','المكسيك','Mexican','مكسيكي'),('MY','Malaysia','ماليزيا','Malaysian','ماليزي'),('MZ','Mozambique','موزمبيق','Mozambican','موزمبيقي'),('NA','Namibia','ناميبيا','Namibian','ناميبي'),('NC','New Caledonia','كاليدونيا الجديدة','New Caledonian','كاليدوني'),('NE','Niger','النيجر','Nigerien','نيجيري'),('NF','Norfolk Island','جزيرة نورفولك','Norfolk Islander','نورفوليكي'),('NG','Nigeria','نيجيريا','Nigerian','نيجيري'),('NI','Nicaragua','نيكاراجوا','Nicaraguan','نيكاراجوي'),('NL','Netherlands','هولندا','Dutch','هولندي'),('NO','Norway','النرويج','Norwegian','نرويجي'),('NP','Nepal','نيبال','Nepalese','نيبالي'),('NR','Nauru','نورو','Nauruan','نوري'),('NU','Niue','ني','Niuean','ني'),('NZ','New Zealand','نيوزيلندا','New Zealander','نيوزيلندي'),('OM','Oman','عمان','Omani','عماني'),('PA','Panama','بنما','Panamanian','بنمي'),('PE','Peru','بيرو','Peruvian','بيري'),('PF','French Polynesia','بولينيزيا الفرنسية','French Polynesian','بولينيزيي'),('PG','Papua New Guinea','بابوا غينيا الجديدة','Papua New Guinean','بابوي'),('PH','Philippines','الفليبين','Filipino','فلبيني'),('PK','Pakistan','باكستان','Pakistani','باكستاني'),('PL','Poland','بولندا','Polish','بولندي'),('PN','Pitcairn','بيتكيرن','Pitcairn Islander','بيتكيرني'),('PR','Puerto Rico','بورتو ريكو','Puerto Rican','بورتي'),('PS','Palestine','فلسطين','Palestinian','فلسطيني'),('PT','Portugal','البرتغال','Portuguese','برتغالي'),('PW','Palau','بالاو','Palauan','بالاوي'),('PY','Paraguay','باراغواي','Paraguayan','بارغاوي'),('QA','Qatar','قطر','Qatari','قطري'),('RE','Reunion Island','ريونيون','Reunionese','ريونيوني'),('RO','Romania','رومانيا','Romanian','روماني'),('RS','Serbia','صربيا','Serbian','صربي'),('RU','Russian','روسيا','Russian','روسي'),('RW','Rwanda','رواندا','Rwandan','رواندا'),('SA','Saudi Arabia','المملكة العربية السعودية','Saudi Arabian','سعودي'),('SB','Solomon Islands','جزر سليمان','Solomon Island','جزر سليمان'),('SC','Seychelles','سيشيل','Seychellois','سيشيلي'),('SD','Sudan','السودان','Sudanese','سوداني'),('SE','Sweden','السويد','Swedish','سويدي'),('SG','Singapore','سنغافورة','Singaporean','سنغافوري'),('SH','Saint Helena','سانت هيلانة','St. Helenian','هيلاني'),('SI','Slovenia','سلوفينيا','Slovenian','سولفيني'),('SJ','Svalbard and Jan Mayen','سفالبارد ويان ماين','Svalbardian/Jan Mayenian','سفالبارد ويان ماين'),('SK','Slovakia','سلوفاكيا','Slovak','سولفاكي'),('SL','Sierra Leone','سيراليون','Sierra Leonean','سيراليوني'),('SM','San Marino','سان مارينو','Sammarinese','ماريني'),('SN','Senegal','السنغال','Senegalese','سنغالي'),('SO','Somalia','الصومال','Somali','صومالي'),('SR','Suriname','سورينام','Surinamese','سورينامي'),('SS','South Sudan','السودان الجنوبي','South Sudanese','سوادني جنوبي'),('ST','Sao Tome and Principe','ساو تومي وبرينسيبي','Sao Tomean','ساو تومي وبرينسيبي'),('SV','El Salvador','إلسلفادور','Salvadoran','سلفادوري'),('SX','Sint Maarten (Dutch part)','ساينت مارتن هولندي','St. Martian(Dutch)','ساينت مارتني هولندي'),('SY','Syria','سوريا','Syrian','سوري'),('SZ','Swaziland','سوازيلند','Swazi','سوازيلندي'),('TC','Turks and Caicos Islands','جزر توركس وكايكوس','Turks and Caicos Islands','جزر توركس وكايكوس'),('TD','Chad','تشاد','Chadian','تشادي'),('TF','French Southern and Antarctic Lands','أراض فرنسية جنوبية وأنتارتيكية','French','أراض فرنسية جنوبية وأنتارتيكية'),('TG','Togo','توغو','Togolese','توغي'),('TH','Thailand','تايلندا','Thai','تايلندي'),('TJ','Tajikistan','طاجيكستان','Tajikistani','طاجيكستاني'),('TK','Tokelau','توكيلاو','Tokelaian','توكيلاوي'),('TL','Timor-Leste','تيمور الشرقية','Timor-Lestian','تيموري'),('TM','Turkmenistan','تركمانستان','Turkmen','تركمانستاني'),('TN','Tunisia','تونس','Tunisian','تونسي'),('TO','Tonga','تونغا','Tongan','تونغي'),('TR','Turkey','تركيا','Turkish','تركي'),('TT','Trinidad and Tobago','ترينيداد وتوباغو','Trinidadian/Tobagonian','ترينيداد وتوباغو'),('TV','Tuvalu','توفالو','Tuvaluan','توفالي'),('TW','Taiwan','تايوان','Taiwanese','تايواني'),('TZ','Tanzania','تنزانيا','Tanzanian','تنزانيي'),('UA','Ukraine','أوكرانيا','Ukrainian','أوكراني'),('UG','Uganda','أوغندا','Ugandan','أوغندي'),('UM','US Minor Outlying Islands','قائمة الولايات والمناطق الأمريكية','US Minor Outlying Islander','أمريكي'),('US','United States','الولايات المتحدة','American','أمريكي'),('UY','Uruguay','أورغواي','Uruguayan','أورغواي'),('UZ','Uzbekistan','أوزباكستان','Uzbek','أوزباكستاني'),('VA','Vatican City','فنزويلا','Vatican','فاتيكاني'),('VC','Saint Vincent and the Grenadines','سانت فنسنت وجزر غرينادين','Saint Vincent and the Grenadines','سانت فنسنت وجزر غرينادين'),('VE','Venezuela','فنزويلا','Venezuelan','فنزويلي'),('VI','Virgin Islands (U.S.)','الجزر العذراء الأمريكي','American Virgin Islander','أمريكي'),('VN','Vietnam','فيتنام','Vietnamese','فيتنامي'),('VU','Vanuatu','فانواتو','Vanuatuan','فانواتي'),('WF','Wallis and Futuna Islands','والس وفوتونا','Wallisian/Futunan','فوتوني'),('WS','Samoa','ساموا','Samoan','ساموي'),('XK','Kosovo','كوسوفو','Kosovar','كوسيفي'),('YE','Yemen','اليمن','Yemeni','يمني'),('YT','Mayotte','مايوت','Mahoran','مايوتي'),('ZA','South Africa','جنوب أفريقيا','South African','أفريقي'),('ZM','Zambia','زامبيا','Zambian','زامبياني'),('ZW','Zimbabwe','زمبابوي','Zimbabwean','زمبابوي');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doc_specialty`
--

DROP TABLE IF EXISTS `doc_specialty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doc_specialty` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `specialty_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `doc_specialty_user_id_foreign` (`user_id`),
  KEY `doc_specialty_specialty_id_foreign` (`specialty_id`),
  CONSTRAINT `doc_specialty_specialty_id_foreign` FOREIGN KEY (`specialty_id`) REFERENCES `specialty` (`id`) ON DELETE CASCADE,
  CONSTRAINT `doc_specialty_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doc_specialty`
--

LOCK TABLES `doc_specialty` WRITE;
/*!40000 ALTER TABLE `doc_specialty` DISABLE KEYS */;
/*!40000 ALTER TABLE `doc_specialty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doc_work`
--

DROP TABLE IF EXISTS `doc_work`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doc_work` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `doc_work_user_id_foreign` (`user_id`),
  CONSTRAINT `doc_work_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doc_work`
--

LOCK TABLES `doc_work` WRITE;
/*!40000 ALTER TABLE `doc_work` DISABLE KEYS */;
/*!40000 ALTER TABLE `doc_work` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_info`
--

DROP TABLE IF EXISTS `doctor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `specialty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cv` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `available_time` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `doctor_info_user_id_foreign` (`user_id`),
  CONSTRAINT `doctor_info_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=642 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_info`
--

LOCK TABLES `doctor_info` WRITE;
/*!40000 ALTER TABLE `doctor_info` DISABLE KEYS */;
INSERT INTO `doctor_info` VALUES (0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(463,1000,'36',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(464,1001,NULL,NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(465,1002,'1',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(466,1003,NULL,NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(467,1004,'3',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL),(468,1005,'34',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(469,1006,'36',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(470,1007,'36',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(471,1008,NULL,NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(472,1009,'36',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(473,1010,NULL,NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(474,1011,'18',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(475,1012,'27',NULL,NULL,NULL,NULL,'أستاذ دكتور',NULL,NULL,NULL),(476,1013,NULL,NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(477,1014,NULL,NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(478,1015,'6',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(479,1016,'19',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(480,1017,NULL,NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(481,1018,'18',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(482,1019,NULL,NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(483,1020,NULL,NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(484,1021,'36',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(485,1022,'18',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(486,1023,'18',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(487,1024,'36',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(488,1025,'28',NULL,NULL,NULL,NULL,'استشاري مدرس',NULL,NULL,NULL),(489,1026,'19',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL),(490,1027,'31',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(491,1028,NULL,NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(492,1029,'36',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(493,1030,'10',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(494,1031,'36',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(495,1032,'3',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(496,1033,'18',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(497,1034,'20',NULL,NULL,NULL,NULL,'رسم عصب و مدرس علاج طبيعي',NULL,NULL,NULL),(498,1035,'26',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(499,1036,'36',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(500,1037,'18',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(501,1038,'34',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(502,1039,'22',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(503,1040,'38',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(504,1041,'29',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(505,1042,'25',NULL,NULL,NULL,NULL,'استشارى',NULL,NULL,NULL),(506,1043,'6',NULL,NULL,NULL,NULL,'أخصائي',NULL,NULL,NULL),(507,1044,'19',NULL,NULL,NULL,NULL,'مدرس',NULL,NULL,NULL),(508,1045,'24',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(509,1046,'40',NULL,NULL,NULL,NULL,'أخصائي',NULL,NULL,NULL),(510,1047,'36',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(511,1048,'21',NULL,NULL,NULL,NULL,'مدرس مساعد',NULL,NULL,NULL),(512,1049,'36',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(513,1050,'36',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(514,1051,'33',NULL,NULL,NULL,NULL,'أستاذ',NULL,NULL,NULL),(515,1052,'30',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(516,1053,'36',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(517,1054,NULL,NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(518,1055,'18',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(519,1056,'31',NULL,NULL,NULL,NULL,'استاذ مساعد',NULL,NULL,NULL),(520,1057,NULL,NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(521,1058,NULL,NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(522,1059,'3',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(523,1060,NULL,NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(524,1061,'12',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(525,1062,'5',NULL,NULL,NULL,NULL,'أخصائي',NULL,NULL,NULL),(526,1063,NULL,NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(527,1064,'2',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(528,1065,'36',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(529,1066,'7',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(530,1067,'28',NULL,NULL,NULL,NULL,'اخصائي مميز',NULL,NULL,NULL),(531,1068,'36',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(532,1069,'3',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL),(533,1070,'21',NULL,NULL,NULL,NULL,'مدرس مساعد',NULL,NULL,NULL),(534,1071,NULL,NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(535,1072,'21',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(536,1073,'3',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL),(537,1074,'27',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(538,1075,'12',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(539,1076,NULL,NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(540,1077,'36',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(541,1078,'18',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(542,1079,NULL,NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(543,1080,NULL,NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(544,1081,'27',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(545,1082,'36',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(546,1083,'36',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(547,1084,'10',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(548,1085,'32',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(549,1086,'18',NULL,NULL,NULL,NULL,'أستاذ',NULL,NULL,NULL),(550,1087,'18',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(551,1088,'2',NULL,NULL,NULL,NULL,'أستاذ',NULL,NULL,NULL),(552,1089,NULL,NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(553,1090,'36',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(554,1091,'26',NULL,NULL,NULL,NULL,'أخصائي',NULL,NULL,NULL),(555,1092,'36',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(556,1093,'36',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(557,1094,'10',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(558,1095,'7',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(559,1096,'7',NULL,NULL,NULL,NULL,'أخصائي',NULL,NULL,NULL),(560,1097,'11',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(561,1098,'10',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(562,1099,NULL,NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(563,1100,'1',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(564,1101,NULL,NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(565,1102,'27',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL),(566,1103,'36',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(567,1104,'35',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(568,1105,NULL,NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(569,1106,NULL,NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(570,1107,'18',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(571,1108,'36',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(572,1109,NULL,NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(573,1110,'23',NULL,NULL,NULL,NULL,'اخصائي العالج الطبيعي ومنسق القسم',NULL,NULL,NULL),(574,1111,'3',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(575,1112,'15',NULL,NULL,NULL,NULL,'أخصائي',NULL,NULL,NULL),(576,1113,'12',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(577,1114,'2',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(578,1115,NULL,NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(579,1116,'36',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(580,1117,'28',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(581,1118,'36',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(582,1119,'6',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(583,1120,NULL,NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(584,1121,'36',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(585,1122,'18',NULL,NULL,NULL,NULL,'أستشارى',NULL,NULL,NULL),(586,1123,'27',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(587,1125,'36',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(588,1126,'18',NULL,NULL,NULL,NULL,'أخصائى',NULL,NULL,NULL),(589,1127,'32',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(590,1128,'18',NULL,NULL,NULL,NULL,'إستشاري',NULL,NULL,NULL),(591,1130,NULL,NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(592,1131,'36',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(593,1132,NULL,NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(594,1133,'18',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(595,1134,'37',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(596,1135,'40',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(597,1136,'6',NULL,NULL,NULL,NULL,'أخصائي',NULL,NULL,NULL),(598,1137,'27',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(599,1138,'10',NULL,NULL,NULL,NULL,'أستشاري / مدرس',NULL,NULL,NULL),(600,1139,'36',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(601,1140,'1',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(602,1141,NULL,NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(603,1142,NULL,NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(604,1143,'18',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(605,1144,'18',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(606,1145,NULL,NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(607,1146,'3',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(608,1147,'18',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(609,1148,'24',NULL,NULL,NULL,NULL,'أستاذ',NULL,NULL,NULL),(610,1149,'3',NULL,NULL,NULL,NULL,'إستشاري',NULL,NULL,NULL),(611,1150,'28',NULL,NULL,NULL,NULL,'اخصائين والاستشارين',NULL,NULL,NULL),(612,1151,'27',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(613,1152,NULL,NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(614,1153,'3',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL),(615,1154,'36',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(616,1155,NULL,NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(617,1156,'3',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL),(618,1157,'36',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(619,1158,'39',NULL,NULL,NULL,NULL,'أستشاري',NULL,NULL,NULL),(620,1159,'3',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL),(621,1160,'4',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(622,1161,'18',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(623,1162,'29',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(624,1163,'22',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(625,1164,'27',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(626,1165,'2',NULL,NULL,NULL,NULL,'أخصائي',NULL,NULL,NULL),(627,1166,'35',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(628,1167,'18',NULL,NULL,NULL,NULL,'أستاذ',NULL,NULL,NULL),(629,1168,'18',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(630,1169,'6',NULL,NULL,NULL,NULL,'أستشاري',NULL,NULL,NULL),(631,1170,'2',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(632,1171,'36',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(633,1172,NULL,NULL,NULL,NULL,NULL,'استشاري و استاذ مساعد',NULL,NULL,NULL),(634,1173,'18',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(635,1174,NULL,NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(636,1175,'3',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL),(637,1176,'27',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL),(638,1177,NULL,NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(639,1178,'28',NULL,NULL,NULL,NULL,'استشاري',NULL,NULL,NULL),(640,1179,'28',NULL,NULL,NULL,NULL,'أخصائي',NULL,NULL,NULL),(641,1180,'6',NULL,NULL,NULL,NULL,'اخصائي',NULL,NULL,NULL);
/*!40000 ALTER TABLE `doctor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `governorates`
--

DROP TABLE IF EXISTS `governorates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `governorates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `governorate_name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `governorate_name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `governorates`
--

LOCK TABLES `governorates` WRITE;
/*!40000 ALTER TABLE `governorates` DISABLE KEYS */;
INSERT INTO `governorates` VALUES (1,'القاهرة','Cairo'),(2,'الجيزة','Giza'),(3,'الأسكندرية','Alexandria'),(4,'الدقهلية','Dakahlia'),(5,'البحر الأحمر','Red Sea'),(6,'البحيرة','Beheira'),(7,'الفيوم','Fayoum'),(8,'الغربية','Gharbiya'),(9,'الإسماعلية','Ismailia'),(10,'المنوفية','Menofia'),(11,'المنيا','Minya'),(12,'القليوبية','Qaliubiya'),(13,'الوادي الجديد','New Valley'),(14,'السويس','Suez'),(15,'اسوان','Aswan'),(16,'اسيوط','Assiut'),(17,'بني سويف','Beni Suef'),(18,'بورسعيد','Port Said'),(19,'دمياط','Damietta'),(20,'الشرقية','Sharkia'),(21,'جنوب سيناء','South Sinai'),(22,'كفر الشيخ','Kafr Al sheikh'),(23,'مطروح','Matrouh'),(24,'الأقصر','Luxor'),(25,'قنا','Qena'),(26,'شمال سيناء','North Sinai'),(27,'سوهاج','Sohag');
/*!40000 ALTER TABLE `governorates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_table` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info` int DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `log_admin_id_foreign` (`admin_id`),
  CONSTRAINT `log_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,'create','admin','4',NULL,'',2,'2022-02-20 17:16:04','2022-02-20 17:16:04'),(2,'create','admin','6',NULL,'',2,'2022-02-20 17:16:15','2022-02-20 17:16:15'),(3,'create','admin','7',NULL,'',2,'2022-02-20 17:16:29','2022-02-20 17:16:29'),(4,'create','admin','8',NULL,'',2,'2022-02-20 17:16:42','2022-02-20 17:16:42'),(5,'create','admin','11',NULL,'',2,'2022-02-20 17:18:12','2022-02-20 17:18:12'),(6,'create','admin','12',NULL,'',2,'2022-02-20 17:18:36','2022-02-20 17:18:36'),(7,'create','admin','13',NULL,'',2,'2022-02-20 17:19:12','2022-02-20 17:19:12'),(8,'create','admin','14',NULL,'',2,'2022-02-20 17:19:31','2022-02-20 17:19:31'),(9,'create','admin','15',NULL,'',2,'2022-02-20 17:19:47','2022-02-20 17:19:47'),(10,'create','role','103',NULL,'',2,'2022-02-20 17:20:38','2022-02-20 17:20:38'),(11,'create','role','104',NULL,'',2,'2022-02-20 17:20:51','2022-02-20 17:20:51'),(12,'create','admin','16',NULL,'',2,'2022-02-20 17:21:14','2022-02-20 17:21:14'),(13,'create','admin','17',NULL,'',2,'2022-02-20 17:21:37','2022-02-20 17:21:37'),(14,'create','admin','18',NULL,'',2,'2022-02-20 17:21:55','2022-02-20 17:21:55'),(15,'create','admin','19',NULL,'',2,'2022-02-20 17:22:09','2022-02-20 17:22:09'),(16,'create','admin','20',NULL,'',2,'2022-02-20 17:22:28','2022-02-20 17:22:28'),(17,'create','admin','21',NULL,'',2,'2022-02-20 17:22:47','2022-02-20 17:22:47'),(18,'create','admin','22',NULL,'',2,'2022-02-20 17:25:01','2022-02-20 17:25:01'),(19,'create','admin','23',NULL,'',2,'2022-02-20 17:25:28','2022-02-20 17:25:28'),(20,'create','admin','24',NULL,'',2,'2022-02-21 11:56:50','2022-02-21 11:56:50'),(21,'create','admin','25',NULL,'',2,'2022-02-21 12:35:25','2022-02-21 12:35:25'),(22,'create','admin','26',NULL,'',2,'2022-02-21 12:37:27','2022-02-21 12:37:27'),(23,'create','users','21',NULL,'',20,'2022-02-22 09:34:07','2022-02-22 09:34:07'),(24,'create','company_info','5',NULL,'',20,'2022-02-22 09:34:07','2022-02-22 09:34:07'),(25,'create','request','126',NULL,'',20,'2022-02-22 09:34:07','2022-02-22 09:34:07'),(26,'create','users','22',NULL,'',20,'2022-02-22 09:49:52','2022-02-22 09:49:52'),(27,'create','company_info','6',NULL,'',20,'2022-02-22 09:49:52','2022-02-22 09:49:52'),(28,'create','request','127',NULL,'',20,'2022-02-22 09:49:52','2022-02-22 09:49:52'),(29,'create','request_call','21',NULL,'',20,'2022-02-22 09:49:52','2022-02-22 09:49:52'),(30,'create','users','23',NULL,'',19,'2022-02-22 15:56:18','2022-02-22 15:56:18'),(31,'create','referral','13',NULL,'',19,'2022-02-22 15:56:18','2022-02-22 15:56:18'),(32,'create','request','128',NULL,'',19,'2022-02-22 15:56:18','2022-02-22 15:56:18'),(33,'update','request','128',NULL,'',19,'2022-02-22 15:56:39','2022-02-22 15:56:39'),(34,'update','request','127',NULL,'',19,'2022-02-22 15:57:14','2022-02-22 15:57:14'),(35,'update','request','127',NULL,'',19,'2022-02-22 15:58:07','2022-02-22 15:58:07'),(36,'update','request','126',NULL,'',19,'2022-02-22 15:58:18','2022-02-22 15:58:18'),(37,'create','request_call','22',NULL,'',2,'2022-02-22 17:06:52','2022-02-22 17:06:52'),(38,'update','request','123',NULL,'',2,'2022-02-22 17:06:52','2022-02-22 17:06:52'),(39,'create','request_call','23',NULL,'',2,'2022-02-22 17:07:07','2022-02-22 17:07:07'),(40,'update','request','123',NULL,'',2,'2022-02-22 17:07:07','2022-02-22 17:07:07'),(41,'create','users','24',NULL,'',19,'2022-02-22 18:45:36','2022-02-22 18:45:36'),(42,'create','referral','14',NULL,'',19,'2022-02-22 18:45:36','2022-02-22 18:45:36'),(43,'create','physician','3',NULL,'',19,'2022-02-22 18:45:36','2022-02-22 18:45:36'),(44,'create','request','129',NULL,'',19,'2022-02-22 18:45:36','2022-02-22 18:45:36'),(45,'create','request_call','24',NULL,'',19,'2022-02-22 18:46:56','2022-02-22 18:46:56'),(46,'update','request','129',NULL,'',19,'2022-02-22 18:46:56','2022-02-22 18:46:56'),(47,'create','users','25',NULL,'',19,'2022-02-23 10:39:46','2022-02-23 10:39:46'),(48,'create','request','130',NULL,'',19,'2022-02-23 10:39:46','2022-02-23 10:39:46'),(49,'create','request_call','25',NULL,'',19,'2022-02-23 10:39:46','2022-02-23 10:39:46'),(50,'create','request_call','26',NULL,'',19,'2022-02-23 10:39:57','2022-02-23 10:39:57'),(51,'update','request','130',NULL,'',19,'2022-02-23 10:39:57','2022-02-23 10:39:57'),(52,'create','users','26',NULL,'',19,'2022-02-23 12:52:02','2022-02-23 12:52:02'),(53,'create','referral','15',NULL,'',19,'2022-02-23 12:52:02','2022-02-23 12:52:02'),(54,'create','request','131',NULL,'',19,'2022-02-23 12:52:02','2022-02-23 12:52:02'),(55,'create','request_call','27',NULL,'',19,'2022-02-23 12:52:02','2022-02-23 12:52:02'),(56,'update','request','131',NULL,'',19,'2022-02-23 12:52:16','2022-02-23 12:52:16'),(57,'create','users','27',NULL,'',19,'2022-02-23 13:06:40','2022-02-23 13:06:40'),(58,'create','company_info','7',NULL,'',19,'2022-02-23 13:06:40','2022-02-23 13:06:40'),(59,'create','request','132',NULL,'',19,'2022-02-23 13:06:40','2022-02-23 13:06:40'),(60,'create','request_call','28',NULL,'',19,'2022-02-23 13:06:40','2022-02-23 13:06:40'),(61,'update','request','132',NULL,'',19,'2022-02-23 13:06:48','2022-02-23 13:06:48'),(62,'create','referral','16',NULL,'',24,'2022-02-23 15:45:11','2022-02-23 15:45:11'),(63,'create','package','16',NULL,'',24,'2022-02-23 15:45:11','2022-02-23 15:45:11'),(64,'create','request','133',NULL,'',24,'2022-02-23 15:45:11','2022-02-23 15:45:11'),(65,'create','request_call','29',NULL,'',24,'2022-02-23 15:45:11','2022-02-23 15:45:11'),(66,'create','users','28',NULL,'',17,'2022-02-23 17:07:35','2022-02-23 17:07:35'),(67,'create','request','134',NULL,'',17,'2022-02-23 17:07:35','2022-02-23 17:07:35'),(68,'update','request','134',NULL,'',17,'2022-02-23 17:07:44','2022-02-23 17:07:44'),(69,'create','users','29',NULL,'',17,'2022-02-23 17:09:36','2022-02-23 17:09:36'),(70,'create','referral','17',NULL,'',17,'2022-02-23 17:09:36','2022-02-23 17:09:36'),(71,'create','request','135',NULL,'',17,'2022-02-23 17:09:36','2022-02-23 17:09:36'),(72,'update','request','135',NULL,'',17,'2022-02-23 17:09:44','2022-02-23 17:09:44'),(73,'update','request','133',NULL,'',19,'2022-02-25 20:44:44','2022-02-25 20:44:44'),(74,'create','users','30',NULL,'',19,'2022-02-25 20:45:54','2022-02-25 20:45:54'),(75,'create','referral','18',NULL,'',19,'2022-02-25 20:45:54','2022-02-25 20:45:54'),(76,'create','company_info','8',NULL,'',19,'2022-02-25 20:45:54','2022-02-25 20:45:54'),(77,'create','request','136',NULL,'',19,'2022-02-25 20:45:54','2022-02-25 20:45:54'),(78,'create','request_call','30',NULL,'',19,'2022-02-25 20:45:54','2022-02-25 20:45:54'),(79,'update','request','136',NULL,'',19,'2022-02-25 20:46:05','2022-02-25 20:46:05'),(80,'create','users','31',NULL,'',19,'2022-02-25 20:47:22','2022-02-25 20:47:22'),(81,'create','request','137',NULL,'',19,'2022-02-25 20:47:22','2022-02-25 20:47:22'),(82,'create','request_call','31',NULL,'',19,'2022-02-25 20:47:22','2022-02-25 20:47:22'),(83,'update','request','137',NULL,'',19,'2022-02-25 20:47:34','2022-02-25 20:47:34'),(84,'create','users','32',NULL,'',19,'2022-02-25 23:53:43','2022-02-25 23:53:43'),(85,'create','referral','19',NULL,'',19,'2022-02-25 23:53:43','2022-02-25 23:53:43'),(86,'create','request','138',NULL,'',19,'2022-02-25 23:53:43','2022-02-25 23:53:43'),(87,'create','request_call','32',NULL,'',19,'2022-02-25 23:53:43','2022-02-25 23:53:43'),(88,'update','request','138',NULL,'',19,'2022-02-25 23:53:52','2022-02-25 23:53:52'),(89,'create','users','33',NULL,'',19,'2022-02-26 11:13:28','2022-02-26 11:13:28'),(90,'create','referral','20',NULL,'',19,'2022-02-26 11:13:28','2022-02-26 11:13:28'),(91,'create','request','139',NULL,'',19,'2022-02-26 11:13:28','2022-02-26 11:13:28'),(92,'create','request_call','33',NULL,'',19,'2022-02-26 11:13:28','2022-02-26 11:13:28'),(93,'update','request','139',NULL,'',19,'2022-02-26 11:13:36','2022-02-26 11:13:36'),(94,'create','users','34',NULL,'',19,'2022-02-26 12:38:46','2022-02-26 12:38:46'),(95,'create','request','140',NULL,'',19,'2022-02-26 12:38:46','2022-02-26 12:38:46'),(96,'create','specialty','19',NULL,'',2,'2022-02-26 16:24:59','2022-02-26 16:24:59'),(97,'create','specialty','20',NULL,'',2,'2022-02-26 18:49:44','2022-02-26 18:49:44'),(98,'create','specialty','21',NULL,'',2,'2022-02-26 18:51:44','2022-02-26 18:51:44'),(99,'create','specialty','22',NULL,'',2,'2022-02-26 18:52:49','2022-02-26 18:52:49'),(100,'create','specialty','23',NULL,'',2,'2022-02-26 18:54:41','2022-02-26 18:54:41'),(101,'create','specialty','24',NULL,'',2,'2022-02-26 18:56:10','2022-02-26 18:56:10'),(102,'create','specialty','25',NULL,'',2,'2022-02-26 18:57:15','2022-02-26 18:57:15'),(103,'update','request','140',NULL,'',19,'2022-02-27 07:38:09','2022-02-27 07:38:09'),(104,'create','users','35',NULL,'',19,'2022-02-27 09:31:56','2022-02-27 09:31:56'),(105,'create','request','141',NULL,'',19,'2022-02-27 09:31:56','2022-02-27 09:31:56'),(106,'create','request_call','34',NULL,'',19,'2022-02-27 09:31:56','2022-02-27 09:31:56'),(107,'update','request','141',NULL,'',19,'2022-02-27 09:32:09','2022-02-27 09:32:09'),(108,'create','users','36',NULL,'',19,'2022-02-27 10:25:41','2022-02-27 10:25:41'),(109,'create','request','142',NULL,'',19,'2022-02-27 10:25:41','2022-02-27 10:25:41'),(110,'create','request_call','35',NULL,'',19,'2022-02-27 10:25:41','2022-02-27 10:25:41'),(111,'update','request','142',NULL,'',19,'2022-02-27 10:25:50','2022-02-27 10:25:50'),(112,'create','specialty','26',NULL,'',2,'2022-02-28 09:11:44','2022-02-28 09:11:44'),(113,'create','specialty','27',NULL,'',2,'2022-02-28 09:12:21','2022-02-28 09:12:21'),(114,'create','specialty','28',NULL,'',2,'2022-02-28 09:12:47','2022-02-28 09:12:47'),(115,'create','specialty','29',NULL,'',2,'2022-02-28 09:13:07','2022-02-28 09:13:07'),(116,'create','specialty','30',NULL,'',2,'2022-02-28 09:13:31','2022-02-28 09:13:31'),(117,'create','specialty','31',NULL,'',2,'2022-02-28 09:13:48','2022-02-28 09:13:48'),(118,'create','specialty','32',NULL,'',2,'2022-02-28 09:14:09','2022-02-28 09:14:09'),(119,'create','specialty','33',NULL,'',2,'2022-02-28 09:14:22','2022-02-28 09:14:22'),(120,'create','specialty','34',NULL,'',2,'2022-02-28 09:14:38','2022-02-28 09:14:38'),(121,'create','specialty','35',NULL,'',2,'2022-02-28 09:36:13','2022-02-28 09:36:13'),(122,'create','specialty','36',NULL,'',2,'2022-02-28 09:36:30','2022-02-28 09:36:30'),(123,'update','specialty','36',NULL,'',2,'2022-02-28 09:39:21','2022-02-28 09:39:21'),(124,'create','specialty','37',NULL,'',2,'2022-02-28 11:34:23','2022-02-28 11:34:23'),(125,'create','specialty','38',NULL,'',2,'2022-02-28 11:39:38','2022-02-28 11:39:38'),(126,'create','specialty','39',NULL,'',2,'2022-02-28 11:44:30','2022-02-28 11:44:30'),(127,'update','specialty','19',NULL,'',2,'2022-02-28 12:17:16','2022-02-28 12:17:16'),(128,'create','specialty','40',NULL,'',2,'2022-02-28 12:17:39','2022-02-28 12:17:39'),(129,'create','users','1181',NULL,'',2,'2022-03-02 13:35:42','2022-03-02 13:35:42'),(130,'create','request','144',NULL,'',2,'2022-03-02 13:35:42','2022-03-02 13:35:42'),(131,'create','request_call','36',NULL,'',2,'2022-03-02 13:35:42','2022-03-02 13:35:42'),(132,'delete','request_call','36',NULL,'',2,'2022-03-02 13:36:03','2022-03-02 13:36:03'),(133,'update','setting','1',NULL,'old val: it@care-hub.net',2,'2022-03-02 15:52:01','2022-03-02 15:52:01'),(134,'update','setting','2',NULL,'old val: it@care-hub.net',2,'2022-03-02 15:52:01','2022-03-02 15:52:01'),(135,'update','setting','3',NULL,'old val: it@care-hub.net',2,'2022-03-02 15:52:01','2022-03-02 15:52:01'),(136,'update','setting','4',NULL,'old val: it@care-hub.net',2,'2022-03-02 15:52:01','2022-03-02 15:52:01'),(137,'update','setting','5',NULL,'old val: outpatient@care-hub.net',2,'2022-03-02 15:52:01','2022-03-02 15:52:01'),(138,'update','setting','1',NULL,'old val: it@care-hub.net',2,'2022-03-02 15:52:07','2022-03-02 15:52:07'),(139,'update','setting','2',NULL,'old val: it@care-hub.net',2,'2022-03-02 15:52:07','2022-03-02 15:52:07'),(140,'update','setting','3',NULL,'old val: it@care-hub.net',2,'2022-03-02 15:52:07','2022-03-02 15:52:07'),(141,'update','setting','4',NULL,'old val: it@care-hub.net',2,'2022-03-02 15:52:07','2022-03-02 15:52:07'),(142,'update','setting','5',NULL,'old val: a.esmaeel@care-hub.net',2,'2022-03-02 15:52:07','2022-03-02 15:52:07'),(143,'update','request','142',NULL,'',2,'2022-03-02 15:54:35','2022-03-02 15:54:35'),(144,'delete','request_call','35',NULL,'',2,'2022-03-02 15:55:50','2022-03-02 15:55:50'),(145,'create','request_call','37',NULL,'',2,'2022-03-02 15:56:01','2022-03-02 15:56:01'),(146,'update','request','142',NULL,'',2,'2022-03-02 15:56:01','2022-03-02 15:56:01'),(147,'create','request_call','38',NULL,'',2,'2022-03-02 15:56:10','2022-03-02 15:56:10'),(148,'update','request','142',NULL,'',2,'2022-03-02 15:56:10','2022-03-02 15:56:10'),(149,'update','request','133',NULL,'',2,'2022-03-02 15:57:15','2022-03-02 15:57:15'),(150,'update','request','131',NULL,'',2,'2022-03-02 16:31:56','2022-03-02 16:31:56'),(151,'create','request_call','39',NULL,'',1,'2022-03-03 08:01:36','2022-03-03 08:01:36'),(152,'update','request','144',NULL,'',1,'2022-03-03 08:01:36','2022-03-03 08:01:36'),(153,'create','request_call','40',NULL,'',1,'2022-03-03 08:32:24','2022-03-03 08:32:24'),(154,'update','request','144',NULL,'',1,'2022-03-03 08:32:24','2022-03-03 08:32:24'),(155,'create','request_call','41',NULL,'',1,'2022-03-03 11:04:35','2022-03-03 11:04:35'),(156,'update','request','144',NULL,'',1,'2022-03-03 11:04:35','2022-03-03 11:04:35');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_info`
--

DROP TABLE IF EXISTS `log_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `old_val` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_val` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `log_id` bigint unsigned NOT NULL,
  `admin_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `log_info_log_id_foreign` (`log_id`),
  KEY `log_info_admin_id_foreign` (`admin_id`),
  CONSTRAINT `log_info_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE,
  CONSTRAINT `log_info_log_id_foreign` FOREIGN KEY (`log_id`) REFERENCES `log` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_info`
--

LOCK TABLES `log_info` WRITE;
/*!40000 ALTER TABLE `log_info` DISABLE KEYS */;
INSERT INTO `log_info` VALUES (1,'101','101','',1,2,'2022-02-20 17:16:04','2022-02-20 17:16:04'),(2,'Maryam Hatem','Maryam Hatem','',1,2,'2022-02-20 17:16:04','2022-02-20 17:16:04'),(3,'m.hatem@care-hub.net','m.hatem@care-hub.net','',1,2,'2022-02-20 17:16:04','2022-02-20 17:16:04'),(4,'101','101','',2,2,'2022-02-20 17:16:15','2022-02-20 17:16:15'),(5,'Meryam Hassan','Meryam Hassan','',2,2,'2022-02-20 17:16:15','2022-02-20 17:16:15'),(6,'m.hassan@care-hub.net','m.hassan@care-hub.net','',2,2,'2022-02-20 17:16:15','2022-02-20 17:16:15'),(7,'101','101','',3,2,'2022-02-20 17:16:29','2022-02-20 17:16:29'),(8,'Mohamed Mostafa','Mohamed Mostafa','',3,2,'2022-02-20 17:16:29','2022-02-20 17:16:29'),(9,'mohamed.mostafa@care-hub.net','mohamed.mostafa@care-hub.net','',3,2,'2022-02-20 17:16:29','2022-02-20 17:16:29'),(10,'101','101','',4,2,'2022-02-20 17:16:42','2022-02-20 17:16:42'),(11,'Yara','Yara','',4,2,'2022-02-20 17:16:42','2022-02-20 17:16:42'),(12,'y.emad@care-hub.net','y.emad@care-hub.net','',4,2,'2022-02-20 17:16:42','2022-02-20 17:16:42'),(13,'','request_all','create Role Info',10,2,'2022-02-20 17:20:38','2022-02-20 17:20:38'),(14,'','setting_view','create Role Info',10,2,'2022-02-20 17:20:38','2022-02-20 17:20:38'),(15,'','request_emergency','create Role Info',11,2,'2022-02-20 17:20:51','2022-02-20 17:20:51'),(16,'1','4','status_cc',33,19,'2022-02-22 15:56:39','2022-02-22 15:56:39'),(17,'20','19','cc_admin_id',34,19,'2022-02-22 15:57:14','2022-02-22 15:57:14'),(18,'1','4','status_cc',35,19,'2022-02-22 15:58:07','2022-02-22 15:58:07'),(19,'20','19','cc_admin_id',36,19,'2022-02-22 15:58:18','2022-02-22 15:58:18'),(20,'1','4','status_cc',36,19,'2022-02-22 15:58:18','2022-02-22 15:58:18'),(21,NULL,'2','admin_id_in_out',38,2,'2022-02-22 17:06:52','2022-02-22 17:06:52'),(22,'1','4','status_cc',46,19,'2022-02-22 18:46:56','2022-02-22 18:46:56'),(23,'1','4','status_cc',51,19,'2022-02-23 10:39:57','2022-02-23 10:39:57'),(24,'1','4','status_cc',56,19,'2022-02-23 12:52:16','2022-02-23 12:52:16'),(25,'1','4','status_cc',61,19,'2022-02-23 13:06:48','2022-02-23 13:06:48'),(26,'1','4','status_cc',68,17,'2022-02-23 17:07:44','2022-02-23 17:07:44'),(27,'1','4','status_cc',72,17,'2022-02-23 17:09:44','2022-02-23 17:09:44'),(28,'24','19','cc_admin_id',73,19,'2022-02-25 20:44:44','2022-02-25 20:44:44'),(29,'1','4','status_cc',73,19,'2022-02-25 20:44:44','2022-02-25 20:44:44'),(30,'1','4','status_cc',79,19,'2022-02-25 20:46:05','2022-02-25 20:46:05'),(31,NULL,'اسامه','name_caregiver',83,19,'2022-02-25 20:47:34','2022-02-25 20:47:34'),(32,'1','4','status_cc',83,19,'2022-02-25 20:47:34','2022-02-25 20:47:34'),(33,'1','4','status_cc',88,19,'2022-02-25 23:53:52','2022-02-25 23:53:52'),(34,'1','4','status_cc',93,19,'2022-02-26 11:13:36','2022-02-26 11:13:36'),(35,'1','5','status_cc',103,19,'2022-02-27 07:38:09','2022-02-27 07:38:09'),(36,'2','4','status_cc',107,19,'2022-02-27 09:32:09','2022-02-27 09:32:09'),(37,'2','4','status_cc',111,19,'2022-02-27 10:25:50','2022-02-27 10:25:50'),(38,'عناية','عناية وحالات حرجة','name_ar',123,2,'2022-02-28 09:39:21','2022-02-28 09:39:21'),(39,'عناية','عناية وحالات حرجة','name_en',123,2,'2022-02-28 09:39:21','2022-02-28 09:39:21'),(40,'كبد','كبد و جهاز هضمي و مناظير','name_ar',127,2,'2022-02-28 12:17:16','2022-02-28 12:17:16'),(41,'كبد','كبد و جهاز هضمي و مناظير','name_en',127,2,'2022-02-28 12:17:16','2022-02-28 12:17:16'),(42,'36','','id',132,2,'2022-03-02 13:36:03','2022-03-02 13:36:03'),(43,'2','','admin_id',132,2,'2022-03-02 13:36:03','2022-03-02 13:36:03'),(44,'144','','request_id',132,2,'2022-03-02 13:36:03','2022-03-02 13:36:03'),(45,'1','','department',132,2,'2022-03-02 13:36:03','2022-03-02 13:36:03'),(46,'2022-03-02 15:35:00','','call_time',132,2,'2022-03-02 13:36:03','2022-03-02 13:36:03'),(47,'fds','','note',132,2,'2022-03-02 13:36:03','2022-03-02 13:36:03'),(48,'2022-03-02 13:35:42','','created_at',132,2,'2022-03-02 13:36:03','2022-03-02 13:36:03'),(49,'2022-03-02 13:35:42','','updated_at',132,2,'2022-03-02 13:36:03','2022-03-02 13:36:03'),(50,NULL,'2','opd_admin_id',143,2,'2022-03-02 15:54:35','2022-03-02 15:54:35'),(51,NULL,'2','admin_id_in_out',143,2,'2022-03-02 15:54:35','2022-03-02 15:54:35'),(52,'35','','id',144,2,'2022-03-02 15:55:50','2022-03-02 15:55:50'),(53,'19','','admin_id',144,2,'2022-03-02 15:55:50','2022-03-02 15:55:50'),(54,'142','','request_id',144,2,'2022-03-02 15:55:50','2022-03-02 15:55:50'),(55,'1','','department',144,2,'2022-03-02 15:55:50','2022-03-02 15:55:50'),(56,'2022-02-27 12:25:00','','call_time',144,2,'2022-03-02 15:55:50','2022-03-02 15:55:50'),(57,'تركيب اسطرة سليكون','','note',144,2,'2022-03-02 15:55:50','2022-03-02 15:55:50'),(58,'2022-02-27 10:25:41','','created_at',144,2,'2022-03-02 15:55:50','2022-03-02 15:55:50'),(59,'2022-02-27 10:25:41','','updated_at',144,2,'2022-03-02 15:55:50','2022-03-02 15:55:50'),(60,'1','4','status_in_out',149,2,'2022-03-02 15:57:15','2022-03-02 15:57:15'),(61,NULL,'2','admin_id_in_out',149,2,'2022-03-02 15:57:15','2022-03-02 15:57:15'),(62,'1','4','status_in_out',150,2,'2022-03-02 16:31:56','2022-03-02 16:31:56'),(63,NULL,'2','admin_id_in_out',150,2,'2022-03-02 16:31:56','2022-03-02 16:31:56'),(64,'2','1','cc_admin_id',152,1,'2022-03-03 08:01:36','2022-03-03 08:01:36');
/*!40000 ALTER TABLE `log_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_100000_create_password_resets_table',1),(2,'2016_06_01_000001_create_oauth_auth_codes_table',1),(3,'2016_06_01_000002_create_oauth_access_tokens_table',1),(4,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(5,'2016_06_01_000004_create_oauth_clients_table',1),(6,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(7,'2019_08_19_000000_create_failed_jobs_table',1),(8,'2019_12_14_000001_create_personal_access_tokens_table',1),(9,'2022_02_06_115754_create_countries_table',1),(10,'2022_02_06_121430_create_governorates_table',1),(11,'2022_02_06_121431_create_cities_table',1),(12,'2022_02_06_121433_create_users_table',1),(13,'2022_02_06_123211_create_role_table',1),(14,'2022_02_06_123212_create_admin_table',1),(15,'2022_02_06_123247_create_role_info_table',1),(16,'2022_02_06_132403_create_company_info_table',1),(17,'2022_02_06_133219_create_doctor_info_table',1),(18,'2022_02_06_133740_create_specialty_table',1),(19,'2022_02_06_133815_create_doc_specialty_table',1),(20,'2022_02_06_135415_create_service_table',1),(21,'2022_02_06_140404_create_doc_work_table',1),(22,'2022_02_06_143516_create_web_survey_table',1),(23,'2022_02_06_143846_create_setting_table',1),(24,'2022_02_06_145415_create_package_table',1),(25,'2022_02_06_145435_create_referral_table',1),(26,'2022_02_06_150000_create_log_table',1),(27,'2022_02_06_150010_create_log_info_table',1),(28,'2022_02_06_150945_create_request_table',1),(29,'2022_02_06_153117_create_request_call_table',1),(30,'2022_02_06_155501_create_nurse_sheet_table',1),(31,'2022_02_19_115552_remove_city_key_colums_from_users_and_request_table',2),(32,'2022_02_19_115652_create_physician_table',2),(33,'2022_02_19_115752_add_site_colums_from_service_table',2),(34,'2022_02_24_102244_add_address_to_users_table',3),(35,'2022_02_24_122128_create_users_referral_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nurse_sheet`
--

DROP TABLE IF EXISTS `nurse_sheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nurse_sheet` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nurse_id` bigint unsigned NOT NULL,
  `shift_type` int DEFAULT NULL,
  `shift_date` date DEFAULT NULL,
  `investigation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oxygen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `situation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issues` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_devices` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_id` bigint unsigned NOT NULL,
  `admin_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nurse_sheet_nurse_id_foreign` (`nurse_id`),
  KEY `nurse_sheet_request_id_foreign` (`request_id`),
  KEY `nurse_sheet_admin_id_foreign` (`admin_id`),
  CONSTRAINT `nurse_sheet_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE,
  CONSTRAINT `nurse_sheet_nurse_id_foreign` FOREIGN KEY (`nurse_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `nurse_sheet_request_id_foreign` FOREIGN KEY (`request_id`) REFERENCES `request` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nurse_sheet`
--

LOCK TABLES `nurse_sheet` WRITE;
/*!40000 ALTER TABLE `nurse_sheet` DISABLE KEYS */;
INSERT INTO `nurse_sheet` VALUES (1,13,2,'2022-02-21',NULL,NULL,NULL,'a',NULL,NULL,NULL,115,12,'2022-02-21 12:52:31','2022-02-21 12:52:31'),(2,13,1,'2022-02-22',NULL,NULL,NULL,'a',NULL,NULL,NULL,123,2,'2022-02-22 17:07:25','2022-02-22 17:07:25');
/*!40000 ALTER TABLE `nurse_sheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('dd55d377d5b3cf5952d872ef36ce20e9e106bf7bda577b86aa4ff634524eed27fc92e4bd40a36c58',3,1,'Personal Access Token','[]',0,'2022-02-16 15:30:22','2022-02-16 15:30:22','2022-02-17 15:30:22');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'CareHub Personal Access Client','xx4LrG7eq0gAvpYSCDvOoPi4Qt1VoZT9UnXQB47b',NULL,'http://localhost',1,0,0,'2022-02-16 15:30:15','2022-02-16 15:30:15'),(2,NULL,'CareHub Password Grant Client','nHxlDhpO1kEzMWXYKffULBUIiaIv4ZA4YxdHGYam','users','http://localhost',0,1,0,'2022-02-16 15:30:15','2022-02-16 15:30:15');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2022-02-16 15:30:15','2022-02-16 15:30:15');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package`
--

DROP TABLE IF EXISTS `package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` bigint unsigned NOT NULL,
  `disabled` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `package_admin_id_foreign` (`admin_id`),
  CONSTRAINT `package_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package`
--

LOCK TABLES `package` WRITE;
/*!40000 ALTER TABLE `package` DISABLE KEYS */;
INSERT INTO `package` VALUES (1,'ward covid 12','ward covid 12',NULL,2,0,'2022-02-15 13:17:43','2022-02-15 13:17:43'),(2,'post icu covid 24','post icu covid 24',NULL,2,0,'2022-02-15 13:17:55','2022-02-15 13:17:55'),(3,'post icu covid 12','post icu covid 12',NULL,2,0,'2022-02-15 13:18:01','2022-02-15 13:18:01'),(4,'icu covid 24','icu covid 24',NULL,2,0,'2022-02-15 13:18:08','2022-02-15 13:18:08'),(5,'icu covid 12','icu covid 12',NULL,2,0,'2022-02-15 13:18:13','2022-02-15 13:18:13'),(6,'ward covid 24','ward covid 24',NULL,2,0,'2022-02-15 13:18:18','2022-02-15 13:18:18'),(7,'WARD G-24','WARD G-24',NULL,2,0,'2022-02-15 13:18:24','2022-02-15 13:18:24'),(8,'WARD G-12','WARD G-12',NULL,2,0,'2022-02-15 13:18:29','2022-02-15 13:18:29'),(9,'special care','special care',NULL,2,0,'2022-02-15 13:18:35','2022-02-15 13:18:35'),(10,'post icu g-12','post icu g-12',NULL,2,0,'2022-02-15 13:18:41','2022-02-15 13:18:41'),(11,'post icu g-24','post icu g-24',NULL,2,0,'2022-02-15 13:18:45','2022-02-15 13:18:45'),(12,'icu g-12','icu g-12',NULL,2,0,'2022-02-15 13:18:52','2022-02-15 13:18:52'),(13,'icu g-24','icu g-24',NULL,2,0,'2022-02-15 13:18:56','2022-02-15 13:18:56'),(14,'ئئئئئئئئئئئئئئئئئئئئئئئئئئ',NULL,NULL,1,0,'2022-02-17 11:06:04','2022-02-17 11:06:04'),(15,'kjhkjh',NULL,NULL,14,0,'2022-02-21 12:28:10','2022-02-21 12:28:10'),(16,'ICU genral open bill',NULL,NULL,24,0,'2022-02-23 15:45:11','2022-02-23 15:45:11');
/*!40000 ALTER TABLE `package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `physician`
--

DROP TABLE IF EXISTS `physician`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `physician` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `physician_admin_id_foreign` (`admin_id`),
  CONSTRAINT `physician_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `physician`
--

LOCK TABLES `physician` WRITE;
/*!40000 ALTER TABLE `physician` DISABLE KEYS */;
INSERT INTO `physician` VALUES (1,'test doctor',NULL,1,'2022-02-20 11:33:58','2022-02-20 11:33:58'),(2,'د/احمد فرج',NULL,19,'2022-02-21 14:43:06','2022-02-21 14:43:06'),(3,'د/احمد شاهين',NULL,19,'2022-02-22 18:45:36','2022-02-22 18:45:36');
/*!40000 ALTER TABLE `physician` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referral`
--

DROP TABLE IF EXISTS `referral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `referral` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` bigint unsigned NOT NULL,
  `disabled` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `referral_admin_id_foreign` (`admin_id`),
  CONSTRAINT `referral_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referral`
--

LOCK TABLES `referral` WRITE;
/*!40000 ALTER TABLE `referral` DISABLE KEYS */;
INSERT INTO `referral` VALUES (1,'gggggg',NULL,NULL,1,0,'2022-02-13 11:13:23','2022-02-13 11:13:23'),(2,'Facebook',NULL,NULL,2,0,'2022-02-14 12:35:53','2022-02-14 12:35:53'),(3,'ئئئئئئئئئئئئئئئئئئئئئ',NULL,NULL,1,0,'2022-02-17 11:06:04','2022-02-17 11:06:04'),(4,'فيسبوك',NULL,NULL,2,0,'2022-02-17 12:47:34','2022-02-17 12:47:34'),(5,'word of mouth ستاف',NULL,NULL,2,0,'2022-02-17 14:01:03','2022-02-17 14:01:03'),(6,'billboards',NULL,NULL,2,0,'2022-02-17 14:23:43','2022-02-17 14:23:43'),(7,'استاف كير هب call center',NULL,NULL,17,0,'2022-02-21 11:07:49','2022-02-21 11:07:49'),(8,'loyalti',NULL,NULL,17,0,'2022-02-21 11:45:34','2022-02-21 11:45:34'),(9,'د/احمد فرج',NULL,NULL,19,0,'2022-02-21 14:43:06','2022-02-21 14:43:06'),(10,'community sales  صديلية بيراميدز',NULL,NULL,19,0,'2022-02-21 14:52:18','2022-02-21 14:52:18'),(11,'community sales  تعاقد فتح لله خصم 20%',NULL,NULL,19,0,'2022-02-21 15:02:20','2022-02-21 15:02:20'),(12,'\" community sale  صدلية القبرصي خصم 5%\"',NULL,NULL,16,0,'2022-02-21 15:38:39','2022-02-21 15:38:39'),(13,'COMMUNITY SALES صيدلية  البيسي',NULL,NULL,19,0,'2022-02-22 15:56:18','2022-02-22 15:56:18'),(14,'د/احمد شاهين',NULL,NULL,19,0,'2022-02-22 18:45:36','2022-02-22 18:45:36'),(15,'د/وليد اللقاني',NULL,NULL,19,0,'2022-02-23 12:52:02','2022-02-23 12:52:02'),(16,'الحمراوى اويل',NULL,NULL,24,0,'2022-02-23 15:45:11','2022-02-23 15:45:11'),(17,'word of mouth ا/ هند اسامة طرف ميس شيماء',NULL,NULL,17,0,'2022-02-23 17:09:36','2022-02-23 17:09:36'),(18,'word of mouth محمد خميس',NULL,NULL,19,0,'2022-02-25 20:45:54','2022-02-25 20:45:54'),(19,'community sales  صيدليه ماهر',NULL,NULL,19,0,'2022-02-25 23:53:43','2022-02-25 23:53:43'),(20,'LOYALTY',NULL,NULL,19,0,'2022-02-26 11:13:28','2022-02-26 11:13:28');
/*!40000 ALTER TABLE `referral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `doctor_id` bigint unsigned DEFAULT NULL,
  `nurse_id` bigint unsigned DEFAULT NULL,
  `driver_id` bigint unsigned DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_caregiver` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` int DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `governorate_id` bigint unsigned DEFAULT NULL,
  `city_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `land_mark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `floor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apartment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatapp` int DEFAULT NULL,
  `whatapp2` int DEFAULT NULL,
  `whatsApp_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int DEFAULT NULL,
  `covid19` int DEFAULT NULL,
  `corporate_id` bigint unsigned DEFAULT NULL,
  `specialty_id` bigint unsigned DEFAULT NULL,
  `service_id` bigint unsigned DEFAULT NULL,
  `package_id` bigint unsigned DEFAULT NULL,
  `physician` bigint unsigned DEFAULT NULL,
  `visit_time_day` date DEFAULT NULL,
  `visit_time_from` time DEFAULT NULL,
  `visit_time_to` time DEFAULT NULL,
  `expectation_cost` int DEFAULT NULL,
  `real_cost` int DEFAULT NULL,
  `bill_serial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_or_not` int DEFAULT NULL,
  `code_zone_patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bed_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symptoms` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doc_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Feedback` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doc_rate` int DEFAULT NULL,
  `user_rate` int DEFAULT NULL,
  `opd_admin_id` bigint unsigned DEFAULT NULL,
  `cc_admin_id` bigint unsigned DEFAULT NULL,
  `admin_id_in_out` bigint unsigned DEFAULT NULL,
  `status_doc` int DEFAULT '1',
  `status_user` int DEFAULT '1',
  `status_cc` int DEFAULT '1',
  `status_in_out` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `request_user_id_foreign` (`user_id`),
  KEY `request_doctor_id_foreign` (`doctor_id`),
  KEY `request_nurse_id_foreign` (`nurse_id`),
  KEY `request_driver_id_foreign` (`driver_id`),
  KEY `request_governorate_id_foreign` (`governorate_id`),
  KEY `request_corporate_id_foreign` (`corporate_id`),
  KEY `request_specialty_id_foreign` (`specialty_id`),
  KEY `request_service_id_foreign` (`service_id`),
  KEY `request_package_id_foreign` (`package_id`),
  KEY `request_opd_admin_id_foreign` (`opd_admin_id`),
  KEY `request_cc_admin_id_foreign` (`cc_admin_id`),
  KEY `request_admin_id_in_out_foreign` (`admin_id_in_out`),
  KEY `request_physician_foreign` (`physician`),
  CONSTRAINT `request_admin_id_in_out_foreign` FOREIGN KEY (`admin_id_in_out`) REFERENCES `admin` (`id`) ON DELETE CASCADE,
  CONSTRAINT `request_cc_admin_id_foreign` FOREIGN KEY (`cc_admin_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE,
  CONSTRAINT `request_corporate_id_foreign` FOREIGN KEY (`corporate_id`) REFERENCES `company_info` (`id`) ON DELETE CASCADE,
  CONSTRAINT `request_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `request_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `request_governorate_id_foreign` FOREIGN KEY (`governorate_id`) REFERENCES `governorates` (`id`) ON DELETE CASCADE,
  CONSTRAINT `request_nurse_id_foreign` FOREIGN KEY (`nurse_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `request_opd_admin_id_foreign` FOREIGN KEY (`opd_admin_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE,
  CONSTRAINT `request_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `package` (`id`) ON DELETE CASCADE,
  CONSTRAINT `request_physician_foreign` FOREIGN KEY (`physician`) REFERENCES `physician` (`id`) ON DELETE CASCADE,
  CONSTRAINT `request_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE,
  CONSTRAINT `request_specialty_id_foreign` FOREIGN KEY (`specialty_id`) REFERENCES `specialty` (`id`) ON DELETE CASCADE,
  CONSTRAINT `request_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
INSERT INTO `request` VALUES (0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL),(101,1,NULL,NULL,NULL,'ijnji',NULL,NULL,NULL,NULL,NULL,'qqwqwqwqqqqwqwq',NULL,NULL,NULL,'01121426196',NULL,0,0,NULL,NULL,2,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,4,2,'2022-02-13 11:04:42','2022-02-14 13:23:56'),(102,1,NULL,NULL,NULL,'ijnji',NULL,NULL,NULL,NULL,NULL,'fffff',NULL,NULL,NULL,'01121426196',NULL,0,0,NULL,NULL,2,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'ffffff',NULL,NULL,NULL,NULL,2,1,2,1,1,4,2,'2022-02-13 11:12:32','2022-02-14 14:01:02'),(103,2,NULL,NULL,NULL,'Anas',NULL,1,NULL,NULL,NULL,'العصافرة بحري',NULL,NULL,NULL,'01097540411',NULL,1,0,NULL,'25',2,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,500,1200,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,2,2,1,1,4,4,'2022-02-14 12:35:53','2022-02-14 12:50:12'),(104,1,NULL,NULL,NULL,'ijnji',NULL,NULL,NULL,NULL,NULL,'العصافرة بحري',NULL,'8',NULL,'01121426196',NULL,1,0,NULL,'24',3,0,1,NULL,NULL,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17,12,1,1,4,2,'2022-02-14 12:53:50','2022-02-21 12:41:13'),(105,1,NULL,NULL,NULL,'ijnji',NULL,NULL,NULL,NULL,NULL,'fdsa',NULL,NULL,NULL,'01121426196',NULL,0,0,NULL,NULL,2,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,2,2,1,1,4,2,'2022-02-14 12:54:35','2022-02-14 12:55:49'),(106,1,NULL,NULL,NULL,'ijnji',NULL,NULL,NULL,NULL,NULL,'العصافرة بحري',NULL,NULL,NULL,'01121426196',NULL,1,0,NULL,NULL,2,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,2,2,1,1,4,4,'2022-02-14 12:56:46','2022-02-17 17:40:54'),(107,2,NULL,NULL,NULL,'Anas',NULL,NULL,NULL,NULL,NULL,'ضضضضضضضضضضضضضضضضضض',NULL,NULL,NULL,'01097540411',NULL,0,0,NULL,NULL,2,1,3,NULL,NULL,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17,NULL,1,1,4,1,'2022-02-17 11:06:04','2022-02-21 11:49:04'),(108,4,NULL,NULL,NULL,'احمد كمال','محمد احمد',1,NULL,1,NULL,'بيسنتش',NULL,NULL,NULL,'01097540433',NULL,0,0,NULL,'23',2,0,1,NULL,1,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,2,2,1,1,4,4,'2022-02-17 12:47:34','2022-02-17 17:41:00'),(109,4,NULL,NULL,NULL,'احمد كمال',NULL,NULL,NULL,3,NULL,'fdslakj',NULL,NULL,NULL,'01097540433',NULL,0,0,NULL,NULL,2,0,NULL,2,1,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,2,2,1,1,4,4,'2022-02-17 13:40:07','2022-02-17 17:40:14'),(110,5,NULL,NULL,NULL,'حازوووم','الاب',1,NULL,3,NULL,'السيوف شلاحه',NULL,NULL,NULL,'01288585904',NULL,1,0,NULL,'24',2,1,1,7,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,2,2,1,1,4,4,'2022-02-17 14:01:03','2022-02-17 17:40:22'),(111,6,NULL,NULL,NULL,'ايه سيف الدين','سيف الدين',2,NULL,3,NULL,'المعموره الشاطئ','بيت الحاج سيف','التاني','1','01011654903',NULL,1,0,NULL,'25',2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,2,2,1,1,4,4,'2022-02-17 14:12:17','2022-02-17 14:15:28'),(112,7,NULL,NULL,NULL,'ايه مطر','الام',2,NULL,3,NULL,'الل',NULL,NULL,NULL,'01282087732',NULL,1,0,NULL,'25',2,0,4,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,2,2,1,1,4,4,'2022-02-17 14:23:43','2022-02-17 14:25:35'),(113,4,NULL,NULL,NULL,'احمد كمال',NULL,NULL,NULL,NULL,NULL,'العصافرة بحري',NULL,NULL,NULL,'01097540433',NULL,0,0,NULL,NULL,2,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,1,1,4,1,'2022-02-17 17:49:00','2022-02-17 17:51:07'),(114,4,NULL,NULL,NULL,'احمد كمال',NULL,NULL,NULL,NULL,NULL,'العصافرة بحري',NULL,NULL,NULL,'01097540433',NULL,0,0,NULL,NULL,2,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,1,1,4,1,'2022-02-17 17:56:17','2022-02-17 17:59:33'),(115,2,NULL,13,NULL,'Mohamed Rafaat Mohamed Mohamed Kamel','Mohamed Rafaat Mohamed Mohamed Kamel',NULL,NULL,NULL,'Alexandriavcvggg gfdfdfvgt','شرخ 45',NULL,NULL,NULL,'01121426196',NULL,0,0,NULL,NULL,3,1,1,1,3,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,12,1,1,4,4,'2022-02-20 11:33:58','2022-02-21 12:50:12'),(116,10,NULL,NULL,NULL,'اميره هاني محمد السيد ابراهيم','نفسها',NULL,NULL,3,'العوايد','العوايد ش ال500 عماره اللؤلؤه الدورال2 شقه 1','مطعم كيموو','2','1','01270074978',NULL,1,0,NULL,'20',2,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17,NULL,1,1,4,1,'2022-02-21 11:07:49','2022-02-21 12:45:12'),(117,11,NULL,NULL,NULL,'امال محمد قباني','الزوج',NULL,NULL,3,'سيدي جابر','\"Address : 9شارع البراوي متفرع من المشير Area : سيدي جابر land mark: برج الشيماء خلف فندق المدينه المنورة  floor : 19 Apartment: شقه واحده\"',NULL,NULL,NULL,'01221523400','01557458887',0,0,NULL,'55',2,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17,NULL,1,1,4,1,'2022-02-21 11:45:34','2022-02-21 11:46:35'),(118,12,NULL,NULL,NULL,'سعيد حسنين علي','الابنه',1,NULL,NULL,'مصطف كامل','378 طريق لحريه ش ابو قير طريق مصطفي كامل بجوار معرض سيارات الطارق',NULL,NULL,NULL,'01228788855',NULL,0,0,NULL,'77',2,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6,17,6,1,1,4,5,'2022-02-21 12:46:52','2022-02-21 15:18:09'),(119,14,NULL,NULL,NULL,'أحمد محمد أحدم','محمد',2,NULL,3,NULL,'1adresss',NULL,NULL,NULL,'01030221107','01555555555',1,0,NULL,'44',2,0,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,19,4,1,1,4,2,'2022-02-21 13:11:51','2022-02-21 15:35:35'),(120,15,NULL,NULL,NULL,'هبه السيد محمد محمد الشامي','نفسها',2,NULL,3,NULL,'ش سيدي كمال المندرة',NULL,NULL,NULL,'01212737383',NULL,1,0,NULL,'31',2,0,NULL,NULL,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6,16,6,1,1,4,2,'2022-02-21 14:38:55','2022-02-21 15:16:51'),(121,16,NULL,NULL,NULL,'ماجدة عزمي مهند','مجدي',2,'https://www.google.com/maps?q=31.194681,29.9193044&z=17&hl=en',3,NULL,'Address امام ش 15 أحمد ايوب رصافة محرم بيك  Area : محرم بيك  land mark امام رعاية الأمومة و الطفولة  floor : 2  Apartment 4',NULL,NULL,NULL,'01101230127',NULL,1,0,'I.C ماجدة عزمي مهند','67',3,0,NULL,NULL,NULL,4,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3163','ICU General - قسم العناية المركزة - Bed 10-ICU',NULL,NULL,NULL,NULL,NULL,NULL,19,12,1,1,4,2,'2022-02-21 14:43:06','2022-02-21 17:08:45'),(122,17,NULL,NULL,NULL,'اسماء ابراهيم رزق','نفسها',2,NULL,3,NULL,'53 ش الرصافه محرم بيك الدور 8 ش يمين الأسنسنير اخر الممر العمارة الي في وش كافيه الجزيرة',NULL,NULL,NULL,'01008549091',NULL,1,0,NULL,NULL,2,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'3161',NULL,NULL,NULL,NULL,NULL,NULL,6,19,6,1,1,4,2,'2022-02-21 14:52:18','2022-02-21 15:16:21'),(123,18,NULL,NULL,NULL,'اكرم محمد انور السيد','نفسه',1,NULL,3,NULL,'العنوان 11 شارع شوكت أمام باب أذاعة الأسكندرية الدور الرابع شقة 5 العنوان 11 شارع شوكت أمام باب أذاعة الأسكندرية الدور الرابع شقة 5 ... أكرم محمد',NULL,NULL,NULL,'01001322233','01148040704',0,1,NULL,'60',3,1,NULL,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3162',NULL,NULL,NULL,NULL,NULL,NULL,NULL,19,2,1,1,4,1,'2022-02-21 15:02:20','2022-02-22 17:06:52'),(124,19,NULL,NULL,NULL,'محمد سعد علي',NULL,1,NULL,3,'سابا باشا','8 ش العميد عبدالعال عفيفي الشارع الي بعد قسم فلمنج من اتجاه فيكتوريا البيت اخر اعمارة علي الرصيف الدور الارضي',NULL,'الارضي',NULL,'01200220348','01200220348',0,1,NULL,NULL,2,0,NULL,NULL,229,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16,NULL,1,1,4,1,'2022-02-21 15:38:39','2022-02-21 15:39:05'),(125,20,NULL,NULL,NULL,'هالة محمد مرسي',NULL,NULL,NULL,3,NULL,'غيط العنب ورا النقطة عند 58 ش العبور الدور 7 ش 21 يمين الأسنسير التمريض الي هيروح يكلم الحاله وهو عند نقطة',NULL,NULL,NULL,'01201391789','01202891124',0,1,NULL,'49',2,0,NULL,NULL,61,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3166',NULL,NULL,NULL,NULL,NULL,NULL,NULL,19,NULL,1,1,4,1,'2022-02-21 17:03:18','2022-02-21 17:03:55'),(126,21,NULL,NULL,NULL,'فردوس ابراهيم ابو حجازيه','الابنة',2,NULL,3,'فيكتوريا','\"\"\"Address : 47 ش الجلاء فيكتوريا Area : فيكتوريا land mark: اول الشارع محمصة مفيد تحت البيت محل زووم للملابس floor : 5 Apartment:  21\"\"\"','اعلى محمصة مفيد','5','21','01065160947',NULL,0,0,NULL,'92',2,0,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,19,NULL,1,1,4,1,'2022-02-22 09:34:07','2022-02-22 15:58:18'),(127,22,NULL,NULL,NULL,'فايزة عبدالقادر ابو الحمد',NULL,2,NULL,3,'سيدى بشر','15 شارع محمد نجيب اعلى مطابخ ميلانو الدور 13 شقة 1301 سيدي بشر بحر','اعلى مطابخ ميلانو','13','1301','01002480750','01142884025/',0,0,NULL,'75',2,0,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,19,NULL,1,1,4,1,'2022-02-22 09:49:52','2022-02-22 15:58:07'),(128,23,NULL,NULL,NULL,'السيدة بهجة مصطفى','هدى بنت اخت الحاله',2,NULL,3,NULL,'19 ش شعاروي الدور 4 ش 14 لوران امام مول الوطنية',NULL,NULL,NULL,'01011694770',NULL,1,0,NULL,'88',2,0,NULL,NULL,69,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3179',NULL,NULL,NULL,NULL,NULL,NULL,NULL,19,NULL,1,1,4,1,'2022-02-22 15:56:18','2022-02-22 15:56:39'),(129,24,NULL,NULL,NULL,'سلوى عبدالحميد القفاس','نادية اختها',2,NULL,3,NULL,'ش كانوب كمب شيزار شارع رقم 10 ورا كلية هندسة عند صيدلية حودة بعدها ب عمارتين الدور الأرضي ش 1',NULL,NULL,NULL,'01007154698',NULL,1,0,NULL,'75',2,0,NULL,NULL,109,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3181',NULL,NULL,NULL,NULL,NULL,NULL,NULL,19,NULL,1,1,4,1,'2022-02-22 18:45:36','2022-02-22 18:46:56'),(130,25,NULL,NULL,NULL,'صباح احمد محمد','الأبن أحمد',2,NULL,3,NULL,'82 ش وديع بشور سيوف شماعة الدور الأول علوي امام قهوه العبد امام العماره مسجد',NULL,NULL,NULL,'01220337165',NULL,1,0,NULL,'73',2,0,5,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3187',NULL,NULL,NULL,NULL,NULL,NULL,NULL,19,NULL,1,1,4,1,'2022-02-23 10:39:46','2022-02-23 10:39:57'),(131,26,NULL,NULL,NULL,'محمد ناجي احمد','اماني الابنه',1,NULL,3,NULL,'7ش رشيد .. متفرع من الارمن.. برج محمود صادق.. ميامي . دور 9 شقه 18',NULL,NULL,NULL,'01119994007','01212320054',1,0,NULL,'73',3,0,NULL,NULL,78,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2996',NULL,NULL,NULL,NULL,NULL,NULL,NULL,19,2,1,1,4,4,'2022-02-23 12:52:02','2022-03-02 16:31:56'),(132,27,NULL,NULL,NULL,'أحمد حماد المصيري',NULL,1,NULL,3,NULL,'\"Address : عمارات القوات المسلحه - طوسون  عمارة 12 ب  Area : طوسون land mark اول مدخل من نحيه الأكادمية من اول الشارع  floor 3  Apartment 31 \"',NULL,NULL,NULL,'01127773774','01147815777',1,0,NULL,'85',1,0,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3190',NULL,NULL,NULL,NULL,NULL,NULL,NULL,19,NULL,1,1,4,1,'2022-02-23 13:06:40','2022-02-23 13:06:48'),(133,27,NULL,NULL,NULL,'أحمد حماد المصيري','الابن',NULL,NULL,3,'ابو قير','Address : عمارات القوات المسلحه - طوسون  عمارة 12 ب  Area : طوسون land mark اول مدخل من نحيه الأكادمية من اول الشارع  floor 3  Apartment 31','اول مدخل من نحيه الأكادمية من اول الشارع','3','31','01127773774',NULL,0,0,NULL,'85',3,0,7,16,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ICU General - قسم العناية المركزة - Bed 13-ICU',NULL,NULL,NULL,NULL,NULL,NULL,19,2,1,1,4,4,'2022-02-23 15:45:11','2022-03-02 15:57:15'),(134,28,NULL,NULL,NULL,'وفاء احمد محمد عيسي','وليد',NULL,NULL,3,NULL,'\"Address : مستشفي سيتي  Area: لوران land mark: 8 floor :  : 8 Apartment:  802\"',NULL,NULL,NULL,'01281809959',NULL,0,0,NULL,'71',2,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17,NULL,1,1,4,1,'2022-02-23 17:07:35','2022-02-23 17:07:44'),(135,29,NULL,NULL,NULL,'فريدة عبدالرحيم الشافعي','الابنه',NULL,NULL,3,'العوايد','العوايد اول ل 500 ش 3 مسجد القدس الدور الاول',NULL,NULL,NULL,'01273525603',NULL,0,0,NULL,'71',2,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17,NULL,1,1,4,1,'2022-02-23 17:09:36','2022-02-23 17:09:44'),(136,30,NULL,NULL,NULL,'تغريد عبدالله رضى','بنتها رنا',NULL,NULL,3,NULL,'سموحه شارع مدرسة الريادة ابراج الشرطة بجوار جامع السيدة زينب برج أ الدور 9 ش 903',NULL,NULL,NULL,'01006626062',NULL,1,0,NULL,'69',2,0,8,NULL,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,19,NULL,1,1,4,1,'2022-02-25 20:45:54','2022-02-25 20:46:05'),(137,31,NULL,NULL,NULL,'حيات أحمد أحمد','اسامه',2,NULL,3,NULL,'4 ش ابن سعد متفرع من زين العابدين الدور 3 ش 4 منطقة محرم بيك امام صيدلية د فاروق و مسجد التوحيد',NULL,NULL,NULL,'01122209999','033956301',1,0,NULL,'77',2,0,NULL,NULL,67,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,19,NULL,1,1,4,1,'2022-02-25 20:47:22','2022-02-25 20:47:34'),(138,32,NULL,NULL,NULL,'كاتي رزق رزق','الأم',2,NULL,3,NULL,'شارع جمال عبد الناصر فكتوريا  بجوار قهوه بحبح فوق سوبر ماركت الماضي الدور 13 شقه في وش الاسانسير',NULL,NULL,NULL,'01277386969',NULL,1,0,NULL,'22',2,0,NULL,NULL,61,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3214',NULL,NULL,NULL,NULL,NULL,NULL,NULL,19,NULL,1,1,4,1,'2022-02-25 23:53:43','2022-02-25 23:53:52'),(139,33,NULL,NULL,NULL,'سلوى عوض بيومي','الزوج فهمي',2,NULL,3,NULL,'ش ابن شاكر متفرع من شارع الأرمن موازي ل ش 45 عمارة برج سرايا فينوس الدور 7 ش 702 امام الأسنسير  على اول الشارع  كافيه دوار جحا',NULL,NULL,NULL,'01221201950','035520608',1,0,NULL,'53',2,0,NULL,NULL,122,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1719',NULL,NULL,NULL,NULL,NULL,NULL,NULL,19,NULL,1,1,4,1,'2022-02-26 11:13:28','2022-02-26 11:13:36'),(140,34,NULL,NULL,NULL,'محمد احمد محمد','الام',1,NULL,3,'كانبشسيزار','36 ش محمد فؤاد جلال منطقة كامبشيزار الدور 4 شقه 1',NULL,'4','1','01284683683',NULL,1,0,NULL,'3',2,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,19,NULL,1,1,5,1,'2022-02-26 12:38:46','2022-02-27 07:38:09'),(141,35,NULL,NULL,NULL,'احمد محمد علاء الدين','الابن',1,NULL,3,'السيوف','برج الدولية السيوف الدور 6 جنب الاسانسير شارع دادى','دادى للفطائر','6','جنب الاسانسير','01004246864',NULL,1,0,NULL,'81',2,0,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,19,NULL,1,1,4,1,'2022-02-27 09:31:56','2022-02-27 09:32:09'),(142,36,NULL,NULL,NULL,'فوقية عبد المجيد ياقوت','الابن',2,NULL,3,'ونجت','ابراج العبور ش ونجت عمارة 2أ شقة 63 الدور 6 سوبر ماركت الفتح الاسلامى','سوبر ماركت الفتح الاسلامى','6','63','01140030904','01001318553',0,0,NULL,'84',2,0,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,19,2,1,1,4,1,'2022-02-27 10:25:41','2022-03-02 15:54:35'),(143,NULL,NULL,NULL,NULL,'انس outpatien',NULL,NULL,NULL,NULL,NULL,'fdsa',NULL,NULL,NULL,'01097540411',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,99,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,'2022-03-02 13:43:29','2022-03-02 13:43:29'),(144,1181,NULL,NULL,NULL,'Anas',NULL,NULL,NULL,NULL,NULL,'fds',NULL,NULL,NULL,'010975404114',NULL,0,0,NULL,NULL,2,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,2,1,'2022-03-02 13:35:42','2022-03-03 08:01:36');
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_call`
--

DROP TABLE IF EXISTS `request_call`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_call` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` bigint unsigned NOT NULL,
  `request_id` bigint unsigned NOT NULL,
  `department` int DEFAULT NULL,
  `call_time` datetime DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `request_call_admin_id_foreign` (`admin_id`),
  KEY `request_call_request_id_foreign` (`request_id`),
  CONSTRAINT `request_call_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE,
  CONSTRAINT `request_call_request_id_foreign` FOREIGN KEY (`request_id`) REFERENCES `request` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_call`
--

LOCK TABLES `request_call` WRITE;
/*!40000 ALTER TABLE `request_call` DISABLE KEYS */;
INSERT INTO `request_call` VALUES (1,2,103,1,'2022-02-14 14:46:00','ملاحظات الساعة 2','2022-02-14 12:47:36','2022-02-14 12:47:36'),(2,2,109,2,'2022-02-17 15:41:00','gigvi','2022-02-17 13:41:43','2022-02-17 13:41:43'),(3,2,111,2,'2022-02-17 16:13:00','الحاله عاوزه الخدمه الساعه 12 ض','2022-02-17 14:13:27','2022-02-17 14:13:27'),(4,2,112,2,NULL,'معاد الزياره الساعه 5','2022-02-17 14:24:15','2022-02-17 14:24:15'),(5,2,113,2,'2022-02-17 19:50:00','Note','2022-02-17 17:50:41','2022-02-17 17:50:41'),(6,17,116,2,'2022-02-21 13:09:00','الحاله في المستشفي ولسه مطلعتش','2022-02-21 11:10:51','2022-02-21 11:10:51'),(7,17,117,2,'2022-02-21 13:45:00','loyalti الحاله نفسها ساقه ليها كاش باك175ج','2022-02-21 11:46:35','2022-02-21 11:46:35'),(8,14,104,3,'2022-02-21 14:27:00','عايز اسطوانة اكسجين','2022-02-21 12:28:10','2022-02-21 12:28:10'),(9,12,104,3,'2022-02-21 14:41:00','G','2022-02-21 12:41:13','2022-02-21 12:41:13'),(10,12,115,3,'2022-02-21 14:49:00','متابعة عمل URINE ANALYSIS باكر طرفنا ومكتوب الريكوست والفاتوره فقط سحب العينه','2022-02-21 12:50:12','2022-02-21 12:50:12'),(11,19,119,2,'2022-02-21 15:12:00','زيارة الساعة 5','2022-02-21 13:12:51','2022-02-21 13:12:51'),(12,16,119,2,'2022-02-21 16:41:00','اسطوانة','2022-02-21 14:41:39','2022-02-21 14:41:39'),(13,19,121,2,'2022-02-21 16:43:00','الحاله بلغتني انها عاوزه تعرف الأدوية الي الدكتور هيكتبها عشان توفرها لأنها د/ صيدلانية \r\nالحاله محتاجه الحاجه تتحرك بسرعه','2022-02-21 14:43:27','2022-02-21 14:43:27'),(14,12,121,3,'2022-02-21 16:51:00','\"Cbc\r\nNa k\r\nUrea cr\r\nCrp\r\nباكر\"','2022-02-21 14:51:28','2022-02-21 14:51:28'),(15,19,122,2,'2022-02-21 15:52:00','سكر تراكمي','2022-02-21 14:53:01','2022-02-21 14:53:01'),(16,19,123,2,'2022-02-21 15:02:00','community sales  تعاقد فتح لله خصم 20% حساب طرف د/احمد ابو عوف مدير الاداره الطبيه لفتح الله','2022-02-21 15:02:59','2022-02-21 15:02:59'),(17,6,122,2,'2022-02-21 17:15:00','h','2022-02-21 15:15:55','2022-02-21 15:15:55'),(18,4,119,2,'2022-02-21 17:36:00','kk','2022-02-21 15:36:34','2022-02-21 15:36:34'),(19,16,124,2,'2022-02-21 17:38:00','اخصائي او استشاري جلدية','2022-02-21 15:39:05','2022-02-21 15:39:05'),(20,19,125,2,'2022-02-21 18:03:00',NULL,'2022-02-21 17:03:42','2022-02-21 17:03:42'),(21,20,127,1,'2022-02-22 11:49:00','تنفيذ  علاجات + تغير قسطرة','2022-02-22 09:49:52','2022-02-22 09:49:52'),(22,2,123,3,NULL,'fdsa','2022-02-22 17:06:52','2022-02-22 17:06:52'),(23,2,123,3,'2022-02-23 19:07:00','cswae','2022-02-22 17:07:07','2022-02-22 17:07:07'),(24,19,129,1,'2022-02-22 20:46:00',NULL,'2022-02-22 18:46:56','2022-02-22 18:46:56'),(25,19,130,1,'2022-02-23 12:39:00','دكتور استشاري مخ و اعصاب','2022-02-23 10:39:46','2022-02-23 10:39:46'),(26,19,130,1,'2022-02-23 12:39:00',NULL,'2022-02-23 10:39:57','2022-02-23 10:39:57'),(27,19,131,1,'2022-02-23 14:51:00','تغير على جرح + تغير  قسطرة','2022-02-23 12:52:02','2022-02-23 12:52:02'),(28,19,132,1,'2022-02-23 15:03:00','زيارة تقيمية','2022-02-23 13:06:40','2022-02-23 13:06:40'),(29,24,133,1,'2022-02-23 17:44:00','التمريض بنت','2022-02-23 15:45:11','2022-02-23 15:45:11'),(30,19,136,1,'2022-02-25 22:45:00','اشعه على القدم بكره الساعه 11 يكون متواجد في البيت و نكلمها من 10 للتأكيد','2022-02-25 20:45:54','2022-02-25 20:45:54'),(31,19,137,1,'2022-02-25 22:47:00',NULL,'2022-02-25 20:47:22','2022-02-25 20:47:22'),(32,19,138,1,'2022-02-26 01:53:00',NULL,'2022-02-25 23:53:43','2022-02-25 23:53:43'),(33,19,139,1,'2022-02-26 13:12:00','هي نفسها حاله سابقه ليها كاش باك 1736 جنيه \r\nاستشاري صدرية','2022-02-26 11:13:28','2022-02-26 11:13:28'),(34,19,141,1,'2022-02-27 11:31:00','سحب تحاليل و عمل أشعة','2022-02-27 09:31:56','2022-02-27 09:31:56'),(37,2,142,2,'2022-03-24 17:56:00','ى','2022-03-02 15:56:01','2022-03-02 15:56:01'),(38,2,142,2,'2022-03-18 17:56:00',NULL,'2022-03-02 15:56:10','2022-03-02 15:56:10'),(39,1,144,1,'2022-03-02 10:01:00','test','2022-03-03 08:01:36','2022-03-03 08:01:36'),(40,1,144,1,'2022-03-03 10:32:00','qqqqqqqqqq','2022-03-03 08:32:24','2022-03-03 08:32:24'),(41,1,144,1,'2022-03-03 11:04:00','tes','2022-03-03 11:04:35','2022-03-03 11:04:35');
/*!40000 ALTER TABLE `request_call` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (0,'Super Admin',NULL,NULL),(101,'Outpatien','2022-02-15 13:21:06','2022-02-15 13:21:06'),(102,'Inpatient','2022-02-15 13:22:14','2022-02-15 13:22:14'),(103,'Call center','2022-02-20 17:20:38','2022-02-20 17:20:38'),(104,'ER','2022-02-20 17:20:51','2022-02-20 17:20:51');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_info`
--

DROP TABLE IF EXISTS `role_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `have_permission` int NOT NULL,
  `admin_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_info_role_id_foreign` (`role_id`),
  KEY `role_info_admin_id_foreign` (`admin_id`),
  CONSTRAINT `role_info_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_info_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_info`
--

LOCK TABLES `role_info` WRITE;
/*!40000 ALTER TABLE `role_info` DISABLE KEYS */;
INSERT INTO `role_info` VALUES (1,101,'request_out',1,2,'2022-02-15 13:21:06','2022-02-15 13:21:06'),(2,101,'user_doctor',1,2,'2022-02-15 13:21:06','2022-02-15 13:21:06'),(3,101,'user_nurse',1,2,'2022-02-15 13:21:06','2022-02-15 13:21:06'),(4,101,'user_driver',1,2,'2022-02-15 13:21:06','2022-02-15 13:21:06'),(5,101,'specialty_view',1,2,'2022-02-15 13:21:06','2022-02-15 13:21:06'),(6,101,'specialty_cr',1,2,'2022-02-15 13:21:07','2022-02-15 13:21:07'),(7,101,'serves_view',1,2,'2022-02-15 13:21:07','2022-02-15 13:21:07'),(8,101,'serves_cr',1,2,'2022-02-15 13:21:07','2022-02-15 13:21:07'),(9,101,'company_view',1,2,'2022-02-15 13:21:07','2022-02-15 13:21:07'),(10,101,'company_cr',1,2,'2022-02-15 13:21:07','2022-02-15 13:21:07'),(11,101,'package_view',1,2,'2022-02-15 13:21:07','2022-02-15 13:21:07'),(12,101,'package_cr',1,2,'2022-02-15 13:21:07','2022-02-15 13:21:07'),(13,101,'referral_view',1,2,'2022-02-15 13:21:07','2022-02-15 13:21:07'),(14,101,'referral_cr',1,2,'2022-02-15 13:21:07','2022-02-15 13:21:07'),(15,102,'request_in',1,2,'2022-02-15 13:22:14','2022-02-15 13:22:14'),(16,102,'user_patent',1,2,'2022-02-15 13:22:14','2022-02-15 13:22:14'),(17,102,'user_doctor',1,2,'2022-02-15 13:22:14','2022-02-15 13:22:14'),(18,102,'user_nurse',1,2,'2022-02-15 13:22:14','2022-02-15 13:22:14'),(19,102,'user_driver',1,2,'2022-02-15 13:22:14','2022-02-15 13:22:14'),(20,102,'specialty_view',1,2,'2022-02-15 13:22:14','2022-02-15 13:22:14'),(21,102,'specialty_cr',1,2,'2022-02-15 13:22:14','2022-02-15 13:22:14'),(22,102,'serves_view',1,2,'2022-02-15 13:22:14','2022-02-15 13:22:14'),(23,102,'serves_cr',1,2,'2022-02-15 13:22:14','2022-02-15 13:22:14'),(24,102,'company_view',1,2,'2022-02-15 13:22:14','2022-02-15 13:22:14'),(25,102,'company_cr',1,2,'2022-02-15 13:22:14','2022-02-15 13:22:14'),(26,102,'package_view',1,2,'2022-02-15 13:22:14','2022-02-15 13:22:14'),(27,102,'package_cr',1,2,'2022-02-15 13:22:14','2022-02-15 13:22:14'),(28,102,'referral_view',1,2,'2022-02-15 13:22:14','2022-02-15 13:22:14'),(29,102,'referral_cr',1,2,'2022-02-15 13:22:14','2022-02-15 13:22:14'),(30,103,'request_all',1,2,'2022-02-20 17:20:38','2022-02-20 17:20:38'),(31,103,'setting_view',1,2,'2022-02-20 17:20:38','2022-02-20 17:20:38'),(32,104,'request_emergency',1,2,'2022-02-20 17:20:51','2022-02-20 17:20:51');
/*!40000 ALTER TABLE `role_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int DEFAULT NULL,
  `site` int NOT NULL DEFAULT '0',
  `admin_id` bigint unsigned NOT NULL,
  `disabled` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `service_name_en_unique` (`name_en`),
  KEY `service_admin_id_foreign` (`admin_id`),
  CONSTRAINT `service_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=443 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (1,'ar name','eng name',NULL,'public/service/serv_eng_name.jpg',1,0,1,0,'2022-02-13 16:57:39','2022-02-13 16:57:39'),(2,'ar name1','eng name1','5','public/service/serv_eng_name1.jpg',2,0,1,0,'2022-02-13 16:58:04','2022-02-13 16:58:04'),(3,'أشعة علي الاطراف','أشعة علي الاطراف',NULL,NULL,2,0,1,0,NULL,NULL),(4,'أشعة (اليد-الرسغ-الكوع-القدم-الكاحل-الركبةالواحدة)','أشعة (اليد-الرسغ-الكوع-القدم-الكاحل-الركبةالواحدة)',NULL,NULL,2,0,1,0,NULL,NULL),(5,'أشعة علي مفصل الفخذوضعين','أشعة علي مفصل الفخذوضعين',NULL,NULL,2,0,1,0,NULL,NULL),(6,'أشعة علي الصدر وضع واحد','أشعة علي الصدر وضع واحد',NULL,NULL,2,0,1,0,NULL,NULL),(7,'أشعه علي الكتف وضعين','أشعه علي الكتف وضعين',NULL,NULL,2,0,1,0,NULL,NULL),(8,'أوضاع  4 أشعه علي الركبتين','أوضاع  4 أشعه علي الركبتين',NULL,NULL,2,0,1,0,NULL,NULL),(9,'أشعة علي الحوض كلة','أشعة علي الحوض كلة',NULL,NULL,2,0,1,0,NULL,NULL),(10,'أشعه علي الفقرات (القطنية-العنقة-الظهرية)','أشعه علي الفقرات (القطنية-العنقة-الظهرية)',NULL,NULL,2,0,1,0,NULL,NULL),(11,'موجات فوق صوتية على البطن  ','موجات فوق صوتية على البطن  ',NULL,NULL,2,0,1,0,NULL,NULL),(12,'موجات فوق صوتية على الحوض','موجات فوق صوتية على الحوض',NULL,NULL,2,0,1,0,NULL,NULL),(13,'موجات فوق صوتية على البطن و الحوض','موجات فوق صوتية على البطن و الحوض',NULL,NULL,2,0,1,0,NULL,NULL),(14,'موجات فوق صوتية على الحمل  ','موجات فوق صوتية على الحمل  ',NULL,NULL,2,0,1,0,NULL,NULL),(15,'الفحص المهلبي بالموجات فوق الصوتية  ','الفحص المهلبي بالموجات فوق الصوتية  ',NULL,NULL,2,0,1,0,NULL,NULL),(16,'موجات فوق صوتية على الثدي  ','موجات فوق صوتية على الثدي  ',NULL,NULL,2,0,1,0,NULL,NULL),(17,'موجات فوق صوتية على الرقبة-الغدة الدرقية  ','موجات فوق صوتية على الرقبة-الغدة الدرقية  ',NULL,NULL,2,0,1,0,NULL,NULL),(18,'دوبلر على الشرايين السباتيه  ','دوبلر على الشرايين السباتيه  ',NULL,NULL,2,0,1,0,NULL,NULL),(19,'دوبلر على اوردة الساق او شراين الساق','دوبلر على اوردة الساق او شراين الساق',NULL,NULL,2,0,1,0,NULL,NULL),(20,'دوبلر الحمل','دوبلر الحمل',NULL,NULL,2,0,1,0,NULL,NULL),(21,'دوبلر على شرايين الحوض  ','دوبلر على شرايين الحوض  ',NULL,NULL,2,0,1,0,NULL,NULL),(22,'دوبلر على شرايين الكلى  ','دوبلر على شرايين الكلى  ',NULL,NULL,2,0,1,0,NULL,NULL),(23,'دوبلر علي كيس الصفن  ','دوبلر علي كيس الصفن  ',NULL,NULL,2,0,1,0,NULL,NULL),(24,'دوبلر على الأوعية الدموية للقضيب   ','دوبلر على الأوعية الدموية للقضيب   ',NULL,NULL,2,0,1,0,NULL,NULL),(25,'تمريض عناية مركزه  24 ساعه - مستوى رعاية متقدمه ','تمريض عناية مركزه  24 ساعه - مستوى رعاية متقدمه ',NULL,NULL,2,0,1,0,NULL,NULL),(26,'تمريض عناية مركزه  24 ساعه - مستوى رعاية متميزة','تمريض عناية مركزه  24 ساعه - مستوى رعاية متميزة',NULL,NULL,2,0,1,0,NULL,NULL),(27,'تمريض عناية مركزه  /  اورام  24 ساعه - مستوى رعاية مركزه','تمريض عناية مركزه  /  اورام  24 ساعه - مستوى رعاية مركزه',NULL,NULL,2,0,1,0,NULL,NULL),(28,'تمريض القسم الداخلى  24 ساعه - مستوى رعاية تمريضيه خاصة','تمريض القسم الداخلى  24 ساعه - مستوى رعاية تمريضيه خاصة',NULL,NULL,2,0,1,0,NULL,NULL),(29,'تمريض القسم الداخلى  12 ساعه -مستوى رعاية تمريضيه خاصة','تمريض القسم الداخلى  12 ساعه -مستوى رعاية تمريضيه خاصة',NULL,NULL,2,0,1,0,NULL,NULL),(30,'تمريض القسم الداخلى  24 ساعه - مستوى رعاية تمريضيه منتظمه','تمريض القسم الداخلى  24 ساعه - مستوى رعاية تمريضيه منتظمه',NULL,NULL,2,0,1,0,NULL,NULL),(31,'تمريض القسم الداخلى  12 ساعه -مستوى رعاية تمريضيه منظمه','تمريض القسم الداخلى  12 ساعه -مستوى رعاية تمريضيه منظمه',NULL,NULL,2,0,1,0,NULL,NULL),(32,'تمريض القسم الداخلى  6 ساعه - مستوى رعاية منتظمه','تمريض القسم الداخلى  6 ساعه - مستوى رعاية منتظمه',NULL,NULL,2,0,1,0,NULL,NULL),(33,'تمريض القسم الداخلى  24 ساعه - مستوى رعاية تمريضيه اساسى','تمريض القسم الداخلى  24 ساعه - مستوى رعاية تمريضيه اساسى',NULL,NULL,2,0,1,0,NULL,NULL),(34,'تمريض القسم الداخلى  12 ساعه -مستوى رعاية تمريضيه اساسى','تمريض القسم الداخلى  12 ساعه -مستوى رعاية تمريضيه اساسى',NULL,NULL,2,0,1,0,NULL,NULL),(35,'خدمات الرعاية بالقسم الداخلى  24 ساعه - مساعدات تمريض','خدمات الرعاية بالقسم الداخلى  24 ساعه - مساعدات تمريض',NULL,NULL,2,0,1,0,NULL,NULL),(36,'خدمات الرعاية بالقسم الداخلى  12 ساعه - مساعدات تمريض','خدمات الرعاية بالقسم الداخلى  12 ساعه - مساعدات تمريض',NULL,NULL,2,0,1,0,NULL,NULL),(37,'العناية المركزه - اورام','العناية المركزه - اورام',NULL,NULL,2,0,1,0,NULL,NULL),(38,'رعاية مسنين','رعاية مسنين',NULL,NULL,2,0,1,0,NULL,NULL),(39,'كشف استشارى أونلاين (مع ممرض وأخصائي بالمنزل )','كشف استشارى أونلاين (مع ممرض وأخصائي بالمنزل )',NULL,NULL,2,0,1,0,NULL,NULL),(40,'كشف استشاري أونلاين','كشف استشاري أونلاين',NULL,NULL,2,0,1,0,NULL,NULL),(41,'كشف أخصائي أونلاين','كشف أخصائي أونلاين',NULL,NULL,2,0,1,0,NULL,NULL),(42,'متابعة أونلاين اخصائى','متابعة أونلاين اخصائى',NULL,NULL,2,0,1,0,NULL,NULL),(43,'كشف أخصائى طوارئ','كشف أخصائى طوارئ',NULL,NULL,2,0,1,0,NULL,NULL),(44,'كشف أخصائى طوارئ واستدعاء طبيب العنايه','كشف أخصائى طوارئ واستدعاء طبيب العنايه',NULL,NULL,2,0,1,0,NULL,NULL),(45,'سيارة اسعاف بتمريض - داخل الاسكندرية','سيارة اسعاف بتمريض - داخل الاسكندرية',NULL,NULL,2,0,1,0,NULL,NULL),(46,'سيارة اسعاف بتمريض وطبيب - داخل الاسكندرية','سيارة اسعاف بتمريض وطبيب - داخل الاسكندرية',NULL,NULL,2,0,1,0,NULL,NULL),(47,'رسم استخدام جهاز تنفس صناعى متنقل داخل سيارة الاسعاف - داخل الاسكندريه','رسم استخدام جهاز تنفس صناعى متنقل داخل سيارة الاسعاف - داخل الاسكندريه',NULL,NULL,2,0,1,0,NULL,NULL),(48,'رسم استخدام جهاز تنفس صناعى متنقل داخل سيارة الاسعاف - خارج الاسكندريه','رسم استخدام جهاز تنفس صناعى متنقل داخل سيارة الاسعاف - خارج الاسكندريه',NULL,NULL,2,0,1,0,NULL,NULL),(49,'رسم استخدام جهاز صدمات كهربائية داخل سيارة الاسعاف','رسم استخدام جهاز صدمات كهربائية داخل سيارة الاسعاف',NULL,NULL,2,0,1,0,NULL,NULL),(50,'1/2ساعة الانتظار الاسعاف - داخل الاسكندرية','1/2ساعة الانتظار الاسعاف - داخل الاسكندرية',NULL,NULL,2,0,1,0,NULL,NULL),(51,' 10كم إضافي لسيارة الإسعاف بتمريض فقط',' 10كم إضافي لسيارة الإسعاف بتمريض فقط',NULL,NULL,2,0,1,0,NULL,NULL),(52,'10كم إضافي لسيارة الإسعاف بتمريض و طبيب','10كم إضافي لسيارة الإسعاف بتمريض و طبيب',NULL,NULL,2,0,1,0,NULL,NULL),(53,'10كم إضافي لسيارة الإسعاف بتمريض و طبيب وجهاز التنفس الصناعي','10كم إضافي لسيارة الإسعاف بتمريض و طبيب وجهاز التنفس الصناعي',NULL,NULL,2,0,1,0,NULL,NULL),(54,'رسم استخدام ماسك سي باب / ساعة (داخل سيارة الإسعاف)','رسم استخدام ماسك سي باب / ساعة (داخل سيارة الإسعاف)',NULL,NULL,2,0,1,0,NULL,NULL),(55,'مونيتور للقلب','مونيتور للقلب',NULL,NULL,2,0,1,0,NULL,NULL),(56,'الإنعاش القلبي الرئوي','الإنعاش القلبي الرئوي',NULL,NULL,2,0,1,0,NULL,NULL),(57,'جهاز صدمات كهربائية','جهاز صدمات كهربائية',NULL,NULL,2,0,1,0,NULL,NULL),(58,'زيارة تمريض - داخل الاسكندرية','زيارة تمريض - داخل الاسكندرية',NULL,NULL,2,0,1,0,NULL,NULL),(59,'زيارة تمريض - ضواحى الاسكندرية','زيارة تمريض - ضواحى الاسكندرية',NULL,NULL,2,0,1,0,NULL,NULL),(60,'زيارة تمريض - خارج الاسكندرية','زيارة تمريض - خارج الاسكندرية',NULL,NULL,2,0,1,0,NULL,NULL),(61,'تركيب كانيولا بواسطه تمريض','تركيب كانيولا بواسطه تمريض',NULL,NULL,2,0,1,0,NULL,NULL),(62,'تركيب كانيولا بواسطة طبيب - تخدير','تركيب كانيولا بواسطة طبيب - تخدير',NULL,NULL,2,0,1,0,NULL,NULL),(63,'تركيب كانيولا بالرقبه بواسطه تمريض ICU','تركيب كانيولا بالرقبه بواسطه تمريض ICU',NULL,NULL,2,0,1,0,NULL,NULL),(64,'تركيب كانيولا بالرقبه بواسطه طبيب تخدير يضاف زيارة طبيب اخصائى','تركيب كانيولا بالرقبه بواسطه طبيب تخدير يضاف زيارة طبيب اخصائى',NULL,NULL,2,0,1,0,NULL,NULL),(65,'حقنه عضل بواسطه تمريض','حقنه عضل بواسطه تمريض',NULL,NULL,2,0,1,0,NULL,NULL),(66,'حقنه وريد بواسطه تمريض','حقنه وريد بواسطه تمريض',NULL,NULL,2,0,1,0,NULL,NULL),(67,'حقنه تحت الجلد بواسطه تمريض','حقنه تحت الجلد بواسطه تمريض',NULL,NULL,2,0,1,0,NULL,NULL),(68,'قياس ضغط و سكر يومى بواسطه تمريض','قياس ضغط و سكر يومى بواسطه تمريض',NULL,NULL,2,0,1,0,NULL,NULL),(69,'قياس ضغط بواسطة التمريض _ بدون كشف ','قياس ضغط بواسطة التمريض _ بدون كشف ',NULL,NULL,2,0,1,0,NULL,NULL),(70,'غيار علي جرح صغير بواسطه تمريض','غيار علي جرح صغير بواسطه تمريض',NULL,NULL,2,0,1,0,NULL,NULL),(71,'غيار على جرح متوسط بواسطه تمريض','غيار على جرح متوسط بواسطه تمريض',NULL,NULL,2,0,1,0,NULL,NULL),(72,'غيارعلى جرح كبير بواسطه تمريض','غيارعلى جرح كبير بواسطه تمريض',NULL,NULL,2,0,1,0,NULL,NULL),(73,'غيار على حرق بواسطه تمريض 1%','غيار على حرق بواسطه تمريض 1%',NULL,NULL,2,0,1,0,NULL,NULL),(74,'غسيل معده بواسطه تمريض','غسيل معده بواسطه تمريض',NULL,NULL,2,0,1,0,NULL,NULL),(75,'اختبار حساسيه  بواسطه تمريض','اختبار حساسيه  بواسطه تمريض',NULL,NULL,2,0,1,0,NULL,NULL),(76,'اختبار حساسيه  + اعطاء حقنه بواسطه تمريض','اختبار حساسيه  + اعطاء حقنه بواسطه تمريض',NULL,NULL,2,0,1,0,NULL,NULL),(77,'سحب عينة غازات بالدم','سحب عينة غازات بالدم',NULL,NULL,2,0,1,0,NULL,NULL),(78,'تركيب قسطره بوليه بواسطه تمريض','تركيب قسطره بوليه بواسطه تمريض',NULL,NULL,2,0,1,0,NULL,NULL),(79,'رفع قسطره بوليه بواسطه تمريض','رفع قسطره بوليه بواسطه تمريض',NULL,NULL,2,0,1,0,NULL,NULL),(80,'تركيب انبوبه معده بواسطه تمريض','تركيب انبوبه معده بواسطه تمريض',NULL,NULL,2,0,1,0,NULL,NULL),(81,'تركيب انبوبه معده بواسطه  طبيب يضاف قيمة الكشف','تركيب انبوبه معده بواسطه  طبيب يضاف قيمة الكشف',NULL,NULL,2,0,1,0,NULL,NULL),(82,'استخدام مظهر الاورده','استخدام مظهر الاورده',NULL,NULL,2,0,1,0,NULL,NULL),(83,'رفع درنقه بواسطه تمريض','رفع درنقه بواسطه تمريض',NULL,NULL,2,0,1,0,NULL,NULL),(84,'رفع درنقه بواسطه طبيب المقيم','رفع درنقه بواسطه طبيب المقيم',NULL,NULL,2,0,1,0,NULL,NULL),(85,'اجراء حقنه شرجيه ','اجراء حقنه شرجيه ',NULL,NULL,2,0,1,0,NULL,NULL),(86,'عينه من السائل السحائى - تخدير','عينه من السائل السحائى - تخدير',NULL,NULL,2,0,1,0,NULL,NULL),(87,'بذل تجمع سائل فى البطن - باطنه - اشعه تداخليه - يضاف تكلفة السونار','بذل تجمع سائل فى البطن - باطنه - اشعه تداخليه - يضاف تكلفة السونار',NULL,NULL,2,0,1,0,NULL,NULL),(88,'حقن وريدى لمحلول الفيرروساك- من ساعه الى ساعتين يضاف قيمة 70 / ساعه زيادة','حقن وريدى لمحلول الفيرروساك- من ساعه الى ساعتين يضاف قيمة 70 / ساعه زيادة',NULL,NULL,2,0,1,0,NULL,NULL),(89,'تركيب محلول وريدى للكبار- ساعه','تركيب محلول وريدى للكبار- ساعه',NULL,NULL,2,0,1,0,NULL,NULL),(90,'تركيب محلول وريدى اطفال - ساعه','تركيب محلول وريدى اطفال - ساعه',NULL,NULL,2,0,1,0,NULL,NULL),(91,'تركيب محلول وريدى للاطفال لمدة اكثر من ساعتين','تركيب محلول وريدى للاطفال لمدة اكثر من ساعتين',NULL,NULL,2,0,1,0,NULL,NULL),(92,'حقن وريدى للادويه تحت الملاحظه الطبيه للكبار- ساعه يضاف قيمة 70 / ساعه اضافيه','حقن وريدى للادويه تحت الملاحظه الطبيه للكبار- ساعه يضاف قيمة 70 / ساعه اضافيه',NULL,NULL,2,0,1,0,NULL,NULL),(93,'حقن وريدى للادويه تحت الملاحظه الطبيه للاطفال - ساعه يضاف قيمة 70/ ساعه اضافيه','حقن وريدى للادويه تحت الملاحظه الطبيه للاطفال - ساعه يضاف قيمة 70/ ساعه اضافيه',NULL,NULL,2,0,1,0,NULL,NULL),(94,'انعاش قلبى - طبيب','انعاش قلبى - طبيب',NULL,NULL,2,0,1,0,NULL,NULL),(95,'جلسة نفس نيبوليزر- شاملة الجهاز','جلسة نفس نيبوليزر- شاملة الجهاز',NULL,NULL,2,0,1,0,NULL,NULL),(96,'نقل كيس دم  ( غير شامل ثمن الدم )','نقل كيس دم  ( غير شامل ثمن الدم )',NULL,NULL,2,0,1,0,NULL,NULL),(97,'فك غرز جراحيه بواسطة تمريض','فك غرز جراحيه بواسطة تمريض',NULL,NULL,2,0,1,0,NULL,NULL),(98,'رفع كلبسات','رفع كلبسات',NULL,NULL,2,0,1,0,NULL,NULL),(99,'رفع c v p تمريض','رفع c v p تمريض',NULL,NULL,2,0,1,0,NULL,NULL),(100,'تسليك قسطره','تسليك قسطره',NULL,NULL,2,0,1,0,NULL,NULL),(101,'تركيب قسطره وريد مركزى  cvp  بواسطه طبيب استشاري عناية','تركيب قسطره وريد مركزى  cvp  بواسطه طبيب استشاري عناية',NULL,NULL,2,0,1,0,NULL,NULL),(102,'رفع قسطره وريد مركزى  cvp  بواسطه طبيب استشاري عناية','رفع قسطره وريد مركزى  cvp  بواسطه طبيب استشاري عناية',NULL,NULL,2,0,1,0,NULL,NULL),(103,'تركيب قسطره وريد مركزى  cvp  بواسطه طبيب اخصائي عناية','تركيب قسطره وريد مركزى  cvp  بواسطه طبيب اخصائي عناية',NULL,NULL,2,0,1,0,NULL,NULL),(104,'رفع قسطره وريد مركزى  cvp  بواسطه طبيب اخصائي عناية','رفع قسطره وريد مركزى  cvp  بواسطه طبيب اخصائي عناية',NULL,NULL,2,0,1,0,NULL,NULL),(105,'كشف اخصائى امراض الباطنه','كشف اخصائى امراض الباطنه',NULL,NULL,2,0,1,0,NULL,NULL),(106,'تحليل سكر بالجهاز - طبيب اثناء الزيارة','تحليل سكر بالجهاز - طبيب اثناء الزيارة',NULL,NULL,2,0,1,0,NULL,NULL),(107,'تركيب مضخه انسولين','تركيب مضخه انسولين',NULL,NULL,2,0,1,0,NULL,NULL),(108,'كشف اخصائى امراض القلب','كشف اخصائى امراض القلب',NULL,NULL,2,0,1,0,NULL,NULL),(109,'رسم قلب - طبيب','رسم قلب - طبيب',NULL,NULL,2,0,1,0,NULL,NULL),(110,'موجات فوق صوتيه على القلب _ ايكو _','موجات فوق صوتيه على القلب _ ايكو _',NULL,NULL,2,0,1,0,NULL,NULL),(111,'كشف اخصائى النسا بالسونار','كشف اخصائى النسا بالسونار',NULL,NULL,2,0,1,0,NULL,NULL),(112,'مونيتر جنين (قياس نبضات الجنين) ','مونيتر جنين (قياس نبضات الجنين) ',NULL,NULL,2,0,1,0,NULL,NULL),(113,'اخذ مسحه من عنق الرحم (للتحليل) ','اخذ مسحه من عنق الرحم (للتحليل) ',NULL,NULL,2,0,1,0,NULL,NULL),(114,'تركيب لولب (بدون ثمن اللولب) ','تركيب لولب (بدون ثمن اللولب) ',NULL,NULL,2,0,1,0,NULL,NULL),(115,'خلع لولب ','خلع لولب ',NULL,NULL,2,0,1,0,NULL,NULL),(116,'كى كيميائى لعنق الرحم  ','كى كيميائى لعنق الرحم  ',NULL,NULL,2,0,1,0,NULL,NULL),(117,'فك غرزة لعنق الرحم ','فك غرزة لعنق الرحم ',NULL,NULL,2,0,1,0,NULL,NULL),(118,'فك غرز ولادة قيصريه ','فك غرز ولادة قيصريه ',NULL,NULL,2,0,1,0,NULL,NULL),(119,'كشف اخصائى الأطفال','كشف اخصائى الأطفال',NULL,NULL,2,0,1,0,NULL,NULL),(120,'التطعيمات (بدون ثمن التطعيم)','التطعيمات (بدون ثمن التطعيم)',NULL,NULL,2,0,1,0,NULL,NULL),(121,'ثقب الاذنين ','ثقب الاذنين ',NULL,NULL,2,0,1,0,NULL,NULL),(122,'كشف اخصائى الصدريه','كشف اخصائى الصدريه',NULL,NULL,2,0,1,0,NULL,NULL),(123,'قياس وظائف التنفس ( يدوى ) ','قياس وظائف التنفس ( يدوى ) ',NULL,NULL,2,0,1,0,NULL,NULL),(124,'قياس كفاءه الرئتين بالكومبيوتر ','قياس كفاءه الرئتين بالكومبيوتر ',NULL,NULL,2,0,1,0,NULL,NULL),(125,'دراسه مشاكل التنفس اثناء النوم  شامل التقرير - غير شامل سعر الرعاية التمريضيه','دراسه مشاكل التنفس اثناء النوم  شامل التقرير - غير شامل سعر الرعاية التمريضيه',NULL,NULL,2,0,1,0,NULL,NULL),(126,'بذل السائل البلورى حول الرئه ( تشخيصى) صدرية -اشعه تداخليه يضاف تكلفى السونار','بذل السائل البلورى حول الرئه ( تشخيصى) صدرية -اشعه تداخليه يضاف تكلفى السونار',NULL,NULL,2,0,1,0,NULL,NULL),(127,'بذل السائل البلورى حول الرئه  ( علاجى) صدرية -اشعه تداخليه يضاف تكلفة السونار','بذل السائل البلورى حول الرئه  ( علاجى) صدرية -اشعه تداخليه يضاف تكلفة السونار',NULL,NULL,2,0,1,0,NULL,NULL),(128,'حقن بلورى ','حقن بلورى ',NULL,NULL,2,0,1,0,NULL,NULL),(129,'كشف اخصائى الجراحه العامه','كشف اخصائى الجراحه العامه',NULL,NULL,2,0,1,0,NULL,NULL),(130,'فتح خراج صغير تحت مخدر موضعى ','فتح خراج صغير تحت مخدر موضعى ',NULL,NULL,2,0,1,0,NULL,NULL),(131,'فتح خراج متوسط  تحت مخدر موضعى ','فتح خراج متوسط  تحت مخدر موضعى ',NULL,NULL,2,0,1,0,NULL,NULL),(132,'فتح خراج كبير تحت مخدر موضعى ','فتح خراج كبير تحت مخدر موضعى ',NULL,NULL,2,0,1,0,NULL,NULL),(133,'استئصال ظفر تحت مخدر موضعى ','استئصال ظفر تحت مخدر موضعى ',NULL,NULL,2,0,1,0,NULL,NULL),(134,'استئصال ظفر قدم غائر تحت مخدر موضعى ','استئصال ظفر قدم غائر تحت مخدر موضعى ',NULL,NULL,2,0,1,0,NULL,NULL),(135,'عمل غرز على جرح قطعى للغرزه الواحدة ','عمل غرز على جرح قطعى للغرزه الواحدة ',NULL,NULL,2,0,1,0,NULL,NULL),(136,'فك غرز جراحيه ','فك غرز جراحيه ',NULL,NULL,2,0,1,0,NULL,NULL),(137,'تنظيف الجرح ','تنظيف الجرح ',NULL,NULL,2,0,1,0,NULL,NULL),(138,'تركيب سنجستكيان ','تركيب سنجستكيان ',NULL,NULL,2,0,1,0,NULL,NULL),(139,'استئصال كيس دهنى صغير تحت مخدر موضعى ','استئصال كيس دهنى صغير تحت مخدر موضعى ',NULL,NULL,2,0,1,0,NULL,NULL),(140,'استئصال كيس دهنى وسط تحت مخدر موضعى ','استئصال كيس دهنى وسط تحت مخدر موضعى ',NULL,NULL,2,0,1,0,NULL,NULL),(141,'استئصال كيس دهنى كبير تحت مخدر موضعى  ','استئصال كيس دهنى كبير تحت مخدر موضعى  ',NULL,NULL,2,0,1,0,NULL,NULL),(142,'استخراج جسم غريب تحت مخدر موضعى ','استخراج جسم غريب تحت مخدر موضعى ',NULL,NULL,2,0,1,0,NULL,NULL),(143,'طهارة بمخدر موضعى الى سن 6 شهور ','طهارة بمخدر موضعى الى سن 6 شهور ',NULL,NULL,2,0,1,0,NULL,NULL),(144,'فك لسان ملتصق ','فك لسان ملتصق ',NULL,NULL,2,0,1,0,NULL,NULL),(145,'تنظيف غيار على قدم سكرى صغير ','تنظيف غيار على قدم سكرى صغير ',NULL,NULL,2,0,1,0,NULL,NULL),(146,'تنظيف غيار على قدم سكرى كبير ','تنظيف غيار على قدم سكرى كبير ',NULL,NULL,2,0,1,0,NULL,NULL),(147,'تركيب انبوب شرجى ','تركيب انبوب شرجى ',NULL,NULL,2,0,1,0,NULL,NULL),(148,'غيار على جرح صغير ','غيار على جرح صغير ',NULL,NULL,2,0,1,0,NULL,NULL),(149,'غيار على جرح متوسط ','غيار على جرح متوسط ',NULL,NULL,2,0,1,0,NULL,NULL),(150,'غيار على جرح  كبير ','غيار على جرح  كبير ',NULL,NULL,2,0,1,0,NULL,NULL),(151,'رفع درنقه ','رفع درنقه ',NULL,NULL,2,0,1,0,NULL,NULL),(152,'كشف اخصائى التجميل','كشف اخصائى التجميل',NULL,NULL,2,0,1,0,NULL,NULL),(153,'غرز تجميل اقل من 2 سم ','غرز تجميل اقل من 2 سم ',NULL,NULL,2,0,1,0,NULL,NULL),(154,'غرز تجميل 2  -  3.5  سم ','غرز تجميل 2  -  3.5  سم ',NULL,NULL,2,0,1,0,NULL,NULL),(155,'مازاد عن 3.5 الى  5 سم ','مازاد عن 3.5 الى  5 سم ',NULL,NULL,2,0,1,0,NULL,NULL),(156,'غيار على حرق مساحه صغيره 5%  ','غيار على حرق مساحه صغيره 5%  ',NULL,NULL,2,0,1,0,NULL,NULL),(157,'غيار على حرق متوسط   5 % -  10 % ','غيار على حرق متوسط   5 % -  10 % ',NULL,NULL,2,0,1,0,NULL,NULL),(158,'غيار على حرق كبير مازاد عن 10% ','غيار على حرق كبير مازاد عن 10% ',NULL,NULL,2,0,1,0,NULL,NULL),(159,'غيار على الجروح التجميليه ','غيار على الجروح التجميليه ',NULL,NULL,2,0,1,0,NULL,NULL),(160,'كشف اخصائى المسالك','كشف اخصائى المسالك',NULL,NULL,2,0,1,0,NULL,NULL),(161,'توسيع مجرى البول بمخدر موضعى ','توسيع مجرى البول بمخدر موضعى ',NULL,NULL,2,0,1,0,NULL,NULL),(162,'تركيب قسطرة بول ','تركيب قسطرة بول ',NULL,NULL,2,0,1,0,NULL,NULL),(163,'فتح على المثانه البوليه ','فتح على المثانه البوليه ',NULL,NULL,2,0,1,0,NULL,NULL),(164,'علاج مناعة موضعى بالمثانة ','علاج مناعة موضعى بالمثانة ',NULL,NULL,2,0,1,0,NULL,NULL),(165,'تفريغ المثانة بواسطة قسطرة نيلتون ','تفريغ المثانة بواسطة قسطرة نيلتون ',NULL,NULL,2,0,1,0,NULL,NULL),(166,'تفريغ تجلط دموى بالمثانة مع غسيل ','تفريغ تجلط دموى بالمثانة مع غسيل ',NULL,NULL,2,0,1,0,NULL,NULL),(167,'رفع قسطرة ','رفع قسطرة ',NULL,NULL,2,0,1,0,NULL,NULL),(168,'تقدير سعة المثانة ','تقدير سعة المثانة ',NULL,NULL,2,0,1,0,NULL,NULL),(169,'تركيب قسطرة بولية على مرشد ','تركيب قسطرة بولية على مرشد ',NULL,NULL,2,0,1,0,NULL,NULL),(170,'فحص المثانه ','فحص المثانه ',NULL,NULL,2,0,1,0,NULL,NULL),(171,'فتح العانه تحت تأثير مخدر موضعى – قسطره سيستونكس ','فتح العانه تحت تأثير مخدر موضعى – قسطره سيستونكس ',NULL,NULL,2,0,1,0,NULL,NULL),(172,'كشف اخصائى عظام','كشف اخصائى عظام',NULL,NULL,2,0,1,0,NULL,NULL),(173,'جبس تحت الركبه  ','جبس تحت الركبه  ',NULL,NULL,2,0,1,0,NULL,NULL),(174,'جبس تحت الركبه اطفال  ','جبس تحت الركبه اطفال  ',NULL,NULL,2,0,1,0,NULL,NULL),(175,'جبس تحت الكوع ','جبس تحت الكوع ',NULL,NULL,2,0,1,0,NULL,NULL),(176,'جبس تحت الكوع اطفال ','جبس تحت الكوع اطفال ',NULL,NULL,2,0,1,0,NULL,NULL),(177,'جبس فوق الركبه ','جبس فوق الركبه ',NULL,NULL,2,0,1,0,NULL,NULL),(178,'جبس فوق الركبه اطفال ','جبس فوق الركبه اطفال ',NULL,NULL,2,0,1,0,NULL,NULL),(179,'جبس فوق الكوع كبار ','جبس فوق الكوع كبار ',NULL,NULL,2,0,1,0,NULL,NULL),(180,'جبس فوق الكوع اطفال ','جبس فوق الكوع اطفال ',NULL,NULL,2,0,1,0,NULL,NULL),(181,'جبيره فخذ ','جبيره فخذ ',NULL,NULL,2,0,1,0,NULL,NULL),(182,'اسطوانه جبس كبار ','اسطوانه جبس كبار ',NULL,NULL,2,0,1,0,NULL,NULL),(183,'اسطوانه جبس للاطفال ','اسطوانه جبس للاطفال ',NULL,NULL,2,0,1,0,NULL,NULL),(184,'جاكيت جبس كبار ','جاكيت جبس كبار ',NULL,NULL,2,0,1,0,NULL,NULL),(185,'جاكيت جبس اطفال ','جاكيت جبس اطفال ',NULL,NULL,2,0,1,0,NULL,NULL),(186,'رفع غرز كلبسات ','رفع غرز كلبسات ',NULL,NULL,2,0,1,0,NULL,NULL),(187,'سلاب يو ','سلاب يو ',NULL,NULL,2,0,1,0,NULL,NULL),(188,'سلاب يو اطفال ','سلاب يو اطفال ',NULL,NULL,2,0,1,0,NULL,NULL),(189,'سلاب تحت الركبه ','سلاب تحت الركبه ',NULL,NULL,2,0,1,0,NULL,NULL),(190,'سلاب خلفى فوق الكوع ','سلاب خلفى فوق الكوع ',NULL,NULL,2,0,1,0,NULL,NULL),(191,'مشمع لاصق لكسر الضلوع ','مشمع لاصق لكسر الضلوع ',NULL,NULL,2,0,1,0,NULL,NULL),(192,'ايلاستوبلاست باندج ','ايلاستوبلاست باندج ',NULL,NULL,2,0,1,0,NULL,NULL),(193,'رباط كريب باندج ','رباط كريب باندج ',NULL,NULL,2,0,1,0,NULL,NULL),(194,'عمل شباك ','عمل شباك ',NULL,NULL,2,0,1,0,NULL,NULL),(195,'فك بنطلون جبس ','فك بنطلون جبس ',NULL,NULL,2,0,1,0,NULL,NULL),(196,'ازاله جبس ','ازاله جبس ',NULL,NULL,2,0,1,0,NULL,NULL),(197,'بذل للركبه ','بذل للركبه ',NULL,NULL,2,0,1,0,NULL,NULL),(198,'غيار متوسط عظام ','غيار متوسط عظام ',NULL,NULL,2,0,1,0,NULL,NULL),(199,'غيار كبير عظام ','غيار كبير عظام ',NULL,NULL,2,0,1,0,NULL,NULL),(200,'ازاله غرز جراحه عظام ','ازاله غرز جراحه عظام ',NULL,NULL,2,0,1,0,NULL,NULL),(201,'حقن موضعى للكعب ','حقن موضعى للكعب ',NULL,NULL,2,0,1,0,NULL,NULL),(202,'حقن موضعى عظام مفاصل ','حقن موضعى عظام مفاصل ',NULL,NULL,2,0,1,0,NULL,NULL),(203,'رباط ثمانى ','رباط ثمانى ',NULL,NULL,2,0,1,0,NULL,NULL),(204,'رباط جونز ','رباط جونز ',NULL,NULL,2,0,1,0,NULL,NULL),(205,'رباط حول الجسم ','رباط حول الجسم ',NULL,NULL,2,0,1,0,NULL,NULL),(206,'رباط حول الجسم اطفال ','رباط حول الجسم اطفال ',NULL,NULL,2,0,1,0,NULL,NULL),(207,'شده جلديه للعظام ','شده جلديه للعظام ',NULL,NULL,2,0,1,0,NULL,NULL),(208,'بنطلون جبس كبار ','بنطلون جبس كبار ',NULL,NULL,2,0,1,0,NULL,NULL),(209,'نصف بنطلون جبس كبار ','نصف بنطلون جبس كبار ',NULL,NULL,2,0,1,0,NULL,NULL),(210,'جبس زورقى للكبار ','جبس زورقى للكبار ',NULL,NULL,2,0,1,0,NULL,NULL),(211,'جبس زورقى اطفال ','جبس زورقى اطفال ',NULL,NULL,2,0,1,0,NULL,NULL),(212,'سلاب للرسغ ','سلاب للرسغ ',NULL,NULL,2,0,1,0,NULL,NULL),(213,'روافع شدة جلدية ','روافع شدة جلدية ',NULL,NULL,2,0,1,0,NULL,NULL),(214,'نصف بنطلون جبس اطفال ','نصف بنطلون جبس اطفال ',NULL,NULL,2,0,1,0,NULL,NULL),(215,'بنطلون جبس اطفال ','بنطلون جبس اطفال ',NULL,NULL,2,0,1,0,NULL,NULL),(216,'سنادة اصابع ','سنادة اصابع ',NULL,NULL,2,0,1,0,NULL,NULL),(217,'سلاب قدم أو كوع خلفى ','سلاب قدم أو كوع خلفى ',NULL,NULL,2,0,1,0,NULL,NULL),(218,'سلاب قدم أو كوع خلفى (للاطفال) ','سلاب قدم أو كوع خلفى (للاطفال) ',NULL,NULL,2,0,1,0,NULL,NULL),(219,'رفع سلك معدنى ','رفع سلك معدنى ',NULL,NULL,2,0,1,0,NULL,NULL),(220,'قياس كثافة العظام ','قياس كثافة العظام ',NULL,NULL,2,0,1,0,NULL,NULL),(221,'عمل سلاب خلفى فوق الركبة ','عمل سلاب خلفى فوق الركبة ',NULL,NULL,2,0,1,0,NULL,NULL),(222,'رد خلع بمفصل الكوع ','رد خلع بمفصل الكوع ',NULL,NULL,2,0,1,0,NULL,NULL),(223,'رباط اصابع عادى ','رباط اصابع عادى ',NULL,NULL,2,0,1,0,NULL,NULL),(224,'سلاب جبس لاصابع اليد ','سلاب جبس لاصابع اليد ',NULL,NULL,2,0,1,0,NULL,NULL),(225,'حقن موضعى عظام مفاصل باستخدام بلازما ','حقن موضعى عظام مفاصل باستخدام بلازما ',NULL,NULL,2,0,1,0,NULL,NULL),(226,'رد الكوع ','رد الكوع ',NULL,NULL,2,0,1,0,NULL,NULL),(227,'رد كسر بسيط ','رد كسر بسيط ',NULL,NULL,2,0,1,0,NULL,NULL),(228,'ازاله غرز جراحه العظام ','ازاله غرز جراحه العظام ',NULL,NULL,2,0,1,0,NULL,NULL),(229,'كشف اخصائى جلديه','كشف اخصائى جلديه',NULL,NULL,2,0,1,0,NULL,NULL),(230,'حقن كورتيزون موضعى للجلسه الواحده منطقه صغيره ','حقن كورتيزون موضعى للجلسه الواحده منطقه صغيره ',NULL,NULL,2,0,1,0,NULL,NULL),(231,'حقن كورتيزون موضعى للجلسه الواحده منطقه متوسطه ','حقن كورتيزون موضعى للجلسه الواحده منطقه متوسطه ',NULL,NULL,2,0,1,0,NULL,NULL),(232,'حقن كورتيزون موضعى للجلسه الواحده منطقه  كبيره ','حقن كورتيزون موضعى للجلسه الواحده منطقه  كبيره ',NULL,NULL,2,0,1,0,NULL,NULL),(233,'عينه من الجلد تحت مخدر موضعى ','عينه من الجلد تحت مخدر موضعى ',NULL,NULL,2,0,1,0,NULL,NULL),(234,'تقشير كيماوى للجلسه الواحده ','تقشير كيماوى للجلسه الواحده ',NULL,NULL,2,0,1,0,NULL,NULL),(235,'اختبار حساسيه للجلد باستخدام اللاصقات (شامل اللاصقات) ','اختبار حساسيه للجلد باستخدام اللاصقات (شامل اللاصقات) ',NULL,NULL,2,0,1,0,NULL,NULL),(236,'ازاله السنطه الاولى ','ازاله السنطه الاولى ',NULL,NULL,2,0,1,0,NULL,NULL),(237,'ما زاد عن السنطه الاولى - للسنطه الواحده ','ما زاد عن السنطه الاولى - للسنطه الواحده ',NULL,NULL,2,0,1,0,NULL,NULL),(238,'ازاله السنطه الاولى من بطن القدم ','ازاله السنطه الاولى من بطن القدم ',NULL,NULL,2,0,1,0,NULL,NULL),(239,'ازله ما زاد عن السنطه الاولى للقدم - - للسنطه الواحده','ازله ما زاد عن السنطه الاولى للقدم - - للسنطه الواحده',NULL,NULL,2,0,1,0,NULL,NULL),(240,'ازله الزوائد الجلديه للجلسه ','ازله الزوائد الجلديه للجلسه ',NULL,NULL,2,0,1,0,NULL,NULL),(241,'ازله التكيسات الخلويه بالوجه ','ازله التكيسات الخلويه بالوجه ',NULL,NULL,2,0,1,0,NULL,NULL),(242,'حقن البوتكس للجلسة  ','حقن البوتكس للجلسة  ',NULL,NULL,2,0,1,0,NULL,NULL),(243,'جلسه اشعه فوق البنفسجيه ','جلسه اشعه فوق البنفسجيه ',NULL,NULL,2,0,1,0,NULL,NULL),(244,'حقن فيتامينات فى فروة الرأس ','حقن فيتامينات فى فروة الرأس ',NULL,NULL,2,0,1,0,NULL,NULL),(245,'حقن بوتكس لزياده التعرق ','حقن بوتكس لزياده التعرق ',NULL,NULL,2,0,1,0,NULL,NULL),(246,'حقن بوتكس لتجاعيد الوجه ','حقن بوتكس لتجاعيد الوجه ',NULL,NULL,2,0,1,0,NULL,NULL),(247,'حقن بوتكس بالكفين و بطن القدم ','حقن بوتكس بالكفين و بطن القدم ',NULL,NULL,2,0,1,0,NULL,NULL),(248,'تقشير بماده TCA ','تقشير بماده TCA ',NULL,NULL,2,0,1,0,NULL,NULL),(249,'تقشير كيماوى بماده TCA ','تقشير كيماوى بماده TCA ',NULL,NULL,2,0,1,0,NULL,NULL),(250,'جلسه ديرماروللر ','جلسه ديرماروللر ',NULL,NULL,2,0,1,0,NULL,NULL),(251,'القناع الماسى لتقشير البشره / الحقنه ','القناع الماسى لتقشير البشره / الحقنه ',NULL,NULL,2,0,1,0,NULL,NULL),(252,'فيلر VOLUME  امبوله ','فيلر VOLUME  امبوله ',NULL,NULL,2,0,1,0,NULL,NULL),(253,'حقن فيلر للوجه او اليدين ','حقن فيلر للوجه او اليدين ',NULL,NULL,2,0,1,0,NULL,NULL),(254,'حقن فيلر للشفاه ','حقن فيلر للشفاه ',NULL,NULL,2,0,1,0,NULL,NULL),(255,'فبلر ULTRA 3 حقنه ','فبلر ULTRA 3 حقنه ',NULL,NULL,2,0,1,0,NULL,NULL),(256,'فبلر ULTRA 4 حقنه ','فبلر ULTRA 4 حقنه ',NULL,NULL,2,0,1,0,NULL,NULL),(257,'حقن ميزوثيرابى لتفتيح الوجه ','حقن ميزوثيرابى لتفتيح الوجه ',NULL,NULL,2,0,1,0,NULL,NULL),(258,'حقن عوامل النمو لعلاج تساقط الشعر ','حقن عوامل النمو لعلاج تساقط الشعر ',NULL,NULL,2,0,1,0,NULL,NULL),(259,'حقن الكافيار الذهبى للوجه ','حقن الكافيار الذهبى للوجه ',NULL,NULL,2,0,1,0,NULL,NULL),(260,'اختزال غير جراحى للدهون I LIPO  / الجلسه ','اختزال غير جراحى للدهون I LIPO  / الجلسه ',NULL,NULL,2,0,1,0,NULL,NULL),(261,'اختزال غير جراحى للدهون LAVATRON  / الجلسه ','اختزال غير جراحى للدهون LAVATRON  / الجلسه ',NULL,NULL,2,0,1,0,NULL,NULL),(262,'التحكم فى صبغه الميلانين ','التحكم فى صبغه الميلانين ',NULL,NULL,2,0,1,0,NULL,NULL),(263,'القناع الاسبانى لتقشير البشره ','القناع الاسبانى لتقشير البشره ',NULL,NULL,2,0,1,0,NULL,NULL),(264,'ميزوثيرابى باستخدام ماده الكبرون ','ميزوثيرابى باستخدام ماده الكبرون ',NULL,NULL,2,0,1,0,NULL,NULL),(265,'ميزوثيرابى لتفتيح البشره ','ميزوثيرابى لتفتيح البشره ',NULL,NULL,2,0,1,0,NULL,NULL),(266,'ميزوثيرابى لازاله اثار حب الشباب ','ميزوثيرابى لازاله اثار حب الشباب ',NULL,NULL,2,0,1,0,NULL,NULL),(267,'ميزوثيرابى لعلاج الهلات السوداء ','ميزوثيرابى لعلاج الهلات السوداء ',NULL,NULL,2,0,1,0,NULL,NULL),(268,'ميزوثيرابى للوجه و الشعر وعلامات التمدد ','ميزوثيرابى للوجه و الشعر وعلامات التمدد ',NULL,NULL,2,0,1,0,NULL,NULL),(269,'ميزوثيرابى للشعر ( خلايا جذعيه ديرماهيل) ','ميزوثيرابى للشعر ( خلايا جذعيه ديرماهيل) ',NULL,NULL,2,0,1,0,NULL,NULL),(270,'ميزوثيرابى للشعر ( هيرتيد) ','ميزوثيرابى للشعر ( هيرتيد) ',NULL,NULL,2,0,1,0,NULL,NULL),(271,'ميزوثيرابى فى فروه الرأس / الجلسه ','ميزوثيرابى فى فروه الرأس / الجلسه ',NULL,NULL,2,0,1,0,NULL,NULL),(272,'ميزوثيرابى تكسير الدهون ','ميزوثيرابى تكسير الدهون ',NULL,NULL,2,0,1,0,NULL,NULL),(273,'ميزوثيرابى لنضاره البشره / الجلسه ','ميزوثيرابى لنضاره البشره / الجلسه ',NULL,NULL,2,0,1,0,NULL,NULL),(274,'ما يزيد عن 1 سم ميزوثيرابى (شعر) ','ما يزيد عن 1 سم ميزوثيرابى (شعر) ',NULL,NULL,2,0,1,0,NULL,NULL),(275,'ما يزيد عن 1 سم ميزوثيرابى (بشره ) ','ما يزيد عن 1 سم ميزوثيرابى (بشره ) ',NULL,NULL,2,0,1,0,NULL,NULL),(276,'ميزوثيرابى للذقن المزدوجه ','ميزوثيرابى للذقن المزدوجه ',NULL,NULL,2,0,1,0,NULL,NULL),(277,'تقشير الابطين ','تقشير الابطين ',NULL,NULL,2,0,1,0,NULL,NULL),(278,'تقشير الظهر ','تقشير الظهر ',NULL,NULL,2,0,1,0,NULL,NULL),(279,'تقشير البيكينى ','تقشير البيكينى ',NULL,NULL,2,0,1,0,NULL,NULL),(280,'تقشير الكوعين ','تقشير الكوعين ',NULL,NULL,2,0,1,0,NULL,NULL),(281,'تقشير الوجه ','تقشير الوجه ',NULL,NULL,2,0,1,0,NULL,NULL),(282,'تقشير الوجه و الرقبه ','تقشير الوجه و الرقبه ',NULL,NULL,2,0,1,0,NULL,NULL),(283,'تقشير الركب ','تقشير الركب ',NULL,NULL,2,0,1,0,NULL,NULL),(284,'حقن بلازما فى الشعر و الوجه ','حقن بلازما فى الشعر و الوجه ',NULL,NULL,2,0,1,0,NULL,NULL),(285,'علاج البشره بالبلازما - جلسه واحده بطقم التجهيزات ','علاج البشره بالبلازما - جلسه واحده بطقم التجهيزات ',NULL,NULL,2,0,1,0,NULL,NULL),(286,'علاج البشره بالبلازما - جلسه واحده بجهاز الطرد المركزى','علاج البشره بالبلازما - جلسه واحده بجهاز الطرد المركزى',NULL,NULL,2,0,1,0,NULL,NULL),(287,'ازاله الزوائد الجلديه - اول زائده ','ازاله الزوائد الجلديه - اول زائده ',NULL,NULL,2,0,1,0,NULL,NULL),(288,'ازاله الزوائد الجلديه -  بعد اول زائده ','ازاله الزوائد الجلديه -  بعد اول زائده ',NULL,NULL,2,0,1,0,NULL,NULL),(289,'جلسه تردد حرارى ','جلسه تردد حرارى ',NULL,NULL,2,0,1,0,NULL,NULL),(290,'جلسه اشعه فوق بنفسجيه ','جلسه اشعه فوق بنفسجيه ',NULL,NULL,2,0,1,0,NULL,NULL),(291,'ازاله سنطه كى بالتبريد  - السنطه الاولى ','ازاله سنطه كى بالتبريد  - السنطه الاولى ',NULL,NULL,2,0,1,0,NULL,NULL),(292,'ازاله سنطه كى بالتبريد -  ما زاد عن السنطه الاولى ','ازاله سنطه كى بالتبريد -  ما زاد عن السنطه الاولى ',NULL,NULL,2,0,1,0,NULL,NULL),(293,'جلسه تجميل باستخدام الديرما بن ','جلسه تجميل باستخدام الديرما بن ',NULL,NULL,2,0,1,0,NULL,NULL),(294,'استخدام 0.5 سم ميزوثيرابى فى الديرما بن ','استخدام 0.5 سم ميزوثيرابى فى الديرما بن ',NULL,NULL,2,0,1,0,NULL,NULL),(295,'استخدام 0.75 سم ميزوثيرابى فى الديرما بن ','استخدام 0.75 سم ميزوثيرابى فى الديرما بن ',NULL,NULL,2,0,1,0,NULL,NULL),(296,'جلسه متابعه  الديرما بن ','جلسه متابعه  الديرما بن ',NULL,NULL,2,0,1,0,NULL,NULL),(297,'حقن بلازما  باستخدام الديرما بن ','حقن بلازما  باستخدام الديرما بن ',NULL,NULL,2,0,1,0,NULL,NULL),(298,'ازاله رؤوس سوداء - منطقه صغيره ','ازاله رؤوس سوداء - منطقه صغيره ',NULL,NULL,2,0,1,0,NULL,NULL),(299,'ازاله رؤوس سوداء - منطقه  متوسطه ','ازاله رؤوس سوداء - منطقه  متوسطه ',NULL,NULL,2,0,1,0,NULL,NULL),(300,'ازاله رؤوس سوداء - منطقه كبيره ','ازاله رؤوس سوداء - منطقه كبيره ',NULL,NULL,2,0,1,0,NULL,NULL),(301,'حقن ماده فلوريوراسيل منطقه صغيره ','حقن ماده فلوريوراسيل منطقه صغيره ',NULL,NULL,2,0,1,0,NULL,NULL),(302,'حقن ماده فلوريوراسيل منطقه متوسطه ','حقن ماده فلوريوراسيل منطقه متوسطه ',NULL,NULL,2,0,1,0,NULL,NULL),(303,'حقن ماده فلوريوراسيل منطقه كبيره ','حقن ماده فلوريوراسيل منطقه كبيره ',NULL,NULL,2,0,1,0,NULL,NULL),(304,'كشف اخصائى انف واذن','كشف اخصائى انف واذن',NULL,NULL,2,0,1,0,NULL,NULL),(305,'غسيل اذن واحدة ','غسيل اذن واحدة ',NULL,NULL,2,0,1,0,NULL,NULL),(306,'غسيل للاذنين ','غسيل للاذنين ',NULL,NULL,2,0,1,0,NULL,NULL),(307,'استخراج جسم غريب بالانف او الاذن ','استخراج جسم غريب بالانف او الاذن ',NULL,NULL,2,0,1,0,NULL,NULL),(308,'حشو انف خلفي','حشو انف خلفي',NULL,NULL,2,0,1,0,NULL,NULL),(309,'منظار انف تشخيصى ','منظار انف تشخيصى ',NULL,NULL,2,0,1,0,NULL,NULL),(310,'منظار حنجرى تشخيصى ','منظار حنجرى تشخيصى ',NULL,NULL,2,0,1,0,NULL,NULL),(311,'كى نزبف بالانف  ','كى نزبف بالانف  ',NULL,NULL,2,0,1,0,NULL,NULL),(312,'منظار حنجرة ضوئى  ','منظار حنجرة ضوئى  ',NULL,NULL,2,0,1,0,NULL,NULL),(313,'حشو انف امامى  ','حشو انف امامى  ',NULL,NULL,2,0,1,0,NULL,NULL),(314,'فتيل اذن (حشو اذن)  ','فتيل اذن (حشو اذن)  ',NULL,NULL,2,0,1,0,NULL,NULL),(315,'شفط من الاذن الخارجية ','شفط من الاذن الخارجية ',NULL,NULL,2,0,1,0,NULL,NULL),(316,'مسحة  باللوزتين  ','مسحة  باللوزتين  ',NULL,NULL,2,0,1,0,NULL,NULL),(317,'ازالة حشو انف ','ازالة حشو انف ',NULL,NULL,2,0,1,0,NULL,NULL),(318,'تركيب فتيل ','تركيب فتيل ',NULL,NULL,2,0,1,0,NULL,NULL),(319,'اخذ عينه تورم بالاذن او الانف او الحنجره تحت مخدر موضعى (لا تشمل سعر العينه ) ','اخذ عينه تورم بالاذن او الانف او الحنجره تحت مخدر موضعى (لا تشمل سعر العينه ) ',NULL,NULL,2,0,1,0,NULL,NULL),(320,'رد كسر بسيط بالانف تحت مخدر موضعى + جبيره خارجيه ','رد كسر بسيط بالانف تحت مخدر موضعى + جبيره خارجيه ',NULL,NULL,2,0,1,0,NULL,NULL),(321,'فحص جيوب انفيه بالمنظار تحت مخدر موضعى ','فحص جيوب انفيه بالمنظار تحت مخدر موضعى ',NULL,NULL,2,0,1,0,NULL,NULL),(322,'منظار حنجره مرن ','منظار حنجره مرن ',NULL,NULL,2,0,1,0,NULL,NULL),(323,'فتح و تصريف خراج حول اللوزتين تحت مخدر موضعى ','فتح و تصريف خراج حول اللوزتين تحت مخدر موضعى ',NULL,NULL,2,0,1,0,NULL,NULL),(324,'تشفيط من الانف ','تشفيط من الانف ',NULL,NULL,2,0,1,0,NULL,NULL),(325,'تشفيط من البلعوم ','تشفيط من البلعوم ',NULL,NULL,2,0,1,0,NULL,NULL),(326,'حقن داخل الانف ','حقن داخل الانف ',NULL,NULL,2,0,1,0,NULL,NULL),(327,'مسح سمعى للاطفال ','مسح سمعى للاطفال ',NULL,NULL,2,0,1,0,NULL,NULL),(328,'كشف اخصائى النفسيه والعصبيه','كشف اخصائى النفسيه والعصبيه',NULL,NULL,2,0,1,0,NULL,NULL),(329,'كشف اخصائى النفسيه والعصبيه  Online','كشف اخصائى النفسيه والعصبيه  Online',NULL,NULL,2,0,1,0,NULL,NULL),(330,'جلسة اخصائى النفسيه والعصبيه  Online','جلسة اخصائى النفسيه والعصبيه  Online',NULL,NULL,2,0,1,0,NULL,NULL),(331,'رسم مخ','رسم مخ',NULL,NULL,2,0,1,0,NULL,NULL),(332,'اختبار عضله واحده','اختبار عضله واحده',NULL,NULL,2,0,1,0,NULL,NULL),(333,'اختبار عصب','اختبار عصب',NULL,NULL,2,0,1,0,NULL,NULL),(334,'رسم  عضلات','رسم  عضلات',NULL,NULL,2,0,1,0,NULL,NULL),(335,'رسم عصب ','رسم عصب ',NULL,NULL,2,0,1,0,NULL,NULL),(336,'P.E.S جهد مسار الي عصب','P.E.S جهد مسار الي عصب',NULL,NULL,2,0,1,0,NULL,NULL),(337,'كشف اخصائى الرمد','كشف اخصائى الرمد',NULL,NULL,2,0,1,0,NULL,NULL),(338,'ازالة كيس دهنى بالعين','ازالة كيس دهنى بالعين',NULL,NULL,2,0,1,0,NULL,NULL),(339,'ازالة اكثر من كيس دهنى بالعين','ازالة اكثر من كيس دهنى بالعين',NULL,NULL,2,0,1,0,NULL,NULL),(340,'كشف نظارة','كشف نظارة',NULL,NULL,2,0,1,0,NULL,NULL),(341,'ازالة جسم غريب من العين','ازالة جسم غريب من العين',NULL,NULL,2,0,1,0,NULL,NULL),(342,'ازالة حبوب من جفن العين','ازالة حبوب من جفن العين',NULL,NULL,2,0,1,0,NULL,NULL),(343,'ازالة حبوب من جفن العينين','ازالة حبوب من جفن العينين',NULL,NULL,2,0,1,0,NULL,NULL),(344,'فتح دمل ','فتح دمل ',NULL,NULL,2,0,1,0,NULL,NULL),(345,'حقن كورتيزون داخل الجفن - عين واحده','حقن كورتيزون داخل الجفن - عين واحده',NULL,NULL,2,0,1,0,NULL,NULL),(346,'حقن كورتيزون داخل الجفن - عينين','حقن كورتيزون داخل الجفن - عينين',NULL,NULL,2,0,1,0,NULL,NULL),(347,'كشف اخصائى اسنان','كشف اخصائى اسنان',NULL,NULL,2,0,1,0,NULL,NULL),(348,'فتح خراج اسنان','فتح خراج اسنان',NULL,NULL,2,0,1,0,NULL,NULL),(349,'فتح خراج اسنان جراحيا مع علاج عصب','فتح خراج اسنان جراحيا مع علاج عصب',NULL,NULL,2,0,1,0,NULL,NULL),(350,'تثبيت طربوش','تثبيت طربوش',NULL,NULL,2,0,1,0,NULL,NULL),(351,'ازالة لحمية','ازالة لحمية',NULL,NULL,2,0,1,0,NULL,NULL),(352,'تحنيط عصب','تحنيط عصب',NULL,NULL,2,0,1,0,NULL,NULL),(353,'كحت رواسب جيرية بالاسنان','كحت رواسب جيرية بالاسنان',NULL,NULL,2,0,1,0,NULL,NULL),(354,'كحت وتنظيف جيوب اللثه','كحت وتنظيف جيوب اللثه',NULL,NULL,2,0,1,0,NULL,NULL),(355,'تنظيف تجويف جاف بين الاسنان','تنظيف تجويف جاف بين الاسنان',NULL,NULL,2,0,1,0,NULL,NULL),(356,'تلميع الاسنان','تلميع الاسنان',NULL,NULL,2,0,1,0,NULL,NULL),(357,'تبيض اسنان','تبيض اسنان',NULL,NULL,2,0,1,0,NULL,NULL),(358,'ايقاف نزيف اسنان','ايقاف نزيف اسنان',NULL,NULL,2,0,1,0,NULL,NULL),(359,'زرع عظم صناعى بالفك','زرع عظم صناعى بالفك',NULL,NULL,2,0,1,0,NULL,NULL),(360,'كل سنة اضافيه','كل سنة اضافيه',NULL,NULL,2,0,1,0,NULL,NULL),(361,'ترميم الاسنان بوتد اللالياف','ترميم الاسنان بوتد اللالياف',NULL,NULL,2,0,1,0,NULL,NULL),(362,'دهان الفلورايد','دهان الفلورايد',NULL,NULL,2,0,1,0,NULL,NULL),(363,'جراحة لثة زائدة','جراحة لثة زائدة',NULL,NULL,2,0,1,0,NULL,NULL),(364,'حافظ اسنان ليلى - زيارة اولى','حافظ اسنان ليلى - زيارة اولى',NULL,NULL,2,0,1,0,NULL,NULL),(365,'حافظ اسنان ليلى - زيارة ثانيا','حافظ اسنان ليلى - زيارة ثانيا',NULL,NULL,2,0,1,0,NULL,NULL),(366,'طربوش بورسلين - زيارة اولى','طربوش بورسلين - زيارة اولى',NULL,NULL,2,0,1,0,NULL,NULL),(367,'طربوش بورسلين - زيارة ثانيه','طربوش بورسلين - زيارة ثانيه',NULL,NULL,2,0,1,0,NULL,NULL),(368,'طربوش اى ماكس - زيارة اولى','طربوش اى ماكس - زيارة اولى',NULL,NULL,2,0,1,0,NULL,NULL),(369,'طربوش اى ماكس - زيارة ثانيه','طربوش اى ماكس - زيارة ثانيه',NULL,NULL,2,0,1,0,NULL,NULL),(370,'علاج وحشو جذور اسنان اماميه - اعادة علاج  زيارة اولى','علاج وحشو جذور اسنان اماميه - اعادة علاج  زيارة اولى',NULL,NULL,2,0,1,0,NULL,NULL),(371,'علاج وحشو جذور اسنان اماميه - اعادة علاج  زيارة ثانية','علاج وحشو جذور اسنان اماميه - اعادة علاج  زيارة ثانية',NULL,NULL,2,0,1,0,NULL,NULL),(372,'علاج وحشو جذور اسنان اماميه - اعادة علاج  زيارة ثالثة','علاج وحشو جذور اسنان اماميه - اعادة علاج  زيارة ثالثة',NULL,NULL,2,0,1,0,NULL,NULL),(373,'علاج وحشو جذور ضرس مائل - زيارة اولى','علاج وحشو جذور ضرس مائل - زيارة اولى',NULL,NULL,2,0,1,0,NULL,NULL),(374,'علاج وحشو جذور ضرس مائل - زيارة ثانية','علاج وحشو جذور ضرس مائل - زيارة ثانية',NULL,NULL,2,0,1,0,NULL,NULL),(375,'علاج وحشو جذور ضرس مائل - زيارة ثالثة','علاج وحشو جذور ضرس مائل - زيارة ثالثة',NULL,NULL,2,0,1,0,NULL,NULL),(376,'علاج وحشو جذور اسنان اماميه - زيارة اولى','علاج وحشو جذور اسنان اماميه - زيارة اولى',NULL,NULL,2,0,1,0,NULL,NULL),(377,'علاج وحشو جذور اسنان اماميه - زيارة ثانية','علاج وحشو جذور اسنان اماميه - زيارة ثانية',NULL,NULL,2,0,1,0,NULL,NULL),(378,'علاج وحشو جذور اسنان خلفيه- زيارة اولى','علاج وحشو جذور اسنان خلفيه- زيارة اولى',NULL,NULL,2,0,1,0,NULL,NULL),(379,'علاج وحشو جذور اسنان خلفيه - زيارة ثانية','علاج وحشو جذور اسنان خلفيه - زيارة ثانية',NULL,NULL,2,0,1,0,NULL,NULL),(380,'علاج وحشو جذور اسنان اماميه مصابة بعدوى - اعادة علاج  زيارة اولى','علاج وحشو جذور اسنان اماميه مصابة بعدوى - اعادة علاج  زيارة اولى',NULL,NULL,2,0,1,0,NULL,NULL),(381,'علاج وحشو جذور اسنان اماميه مصابة بعدوى - اعادة علاج  زيارة ثانية','علاج وحشو جذور اسنان اماميه مصابة بعدوى - اعادة علاج  زيارة ثانية',NULL,NULL,2,0,1,0,NULL,NULL),(382,'علاج وحشو جذور اسنان اماميه  مصابة بعدوى- اعادة علاج  زيارة ثالثة','علاج وحشو جذور اسنان اماميه  مصابة بعدوى- اعادة علاج  زيارة ثالثة',NULL,NULL,2,0,1,0,NULL,NULL),(383,'علاج وحشو جذور ضرس مصابة بعدوى - اعادة علاج  زيارة اولى','علاج وحشو جذور ضرس مصابة بعدوى - اعادة علاج  زيارة اولى',NULL,NULL,2,0,1,0,NULL,NULL),(384,'علاج وحشو جذور ضرس مصابة بعدوى - اعادة علاج  زيارة ثانية','علاج وحشو جذور ضرس مصابة بعدوى - اعادة علاج  زيارة ثانية',NULL,NULL,2,0,1,0,NULL,NULL),(385,'علاج وحشو جذور ضرس مصابة بعدوى- اعادة علاج  زيارة ثالثة','علاج وحشو جذور ضرس مصابة بعدوى- اعادة علاج  زيارة ثالثة',NULL,NULL,2,0,1,0,NULL,NULL),(386,'الخلع العادى للسنة ','الخلع العادى للسنة ',NULL,NULL,2,0,1,0,NULL,NULL),(387,'خلع سنة او ضرس اطفال','خلع سنة او ضرس اطفال',NULL,NULL,2,0,1,0,NULL,NULL),(388,'خلع جراحى لضرس مدفون فى العظام افقيا','خلع جراحى لضرس مدفون فى العظام افقيا',NULL,NULL,2,0,1,0,NULL,NULL),(389,'خلع جراحى لضرس مدفون فى العظام عموديا','خلع جراحى لضرس مدفون فى العظام عموديا',NULL,NULL,2,0,1,0,NULL,NULL),(390,'خلع جراحى لضرس مدفون فى الانسجه ','خلع جراحى لضرس مدفون فى الانسجه ',NULL,NULL,2,0,1,0,NULL,NULL),(391,'علاج جراحى للثه لكل ربع ','علاج جراحى للثه لكل ربع ',NULL,NULL,2,0,1,0,NULL,NULL),(392,'خلع سنة جراحيا','خلع سنة جراحيا',NULL,NULL,2,0,1,0,NULL,NULL),(393,'خلع جذور متبقيه لضرس عادى','خلع جذور متبقيه لضرس عادى',NULL,NULL,2,0,1,0,NULL,NULL),(394,'اسنان قابلة للازالة - للسنة الواحده','اسنان قابلة للازالة - للسنة الواحده',NULL,NULL,2,0,1,0,NULL,NULL),(395,'حشو مؤقت','حشو مؤقت',NULL,NULL,2,0,1,0,NULL,NULL),(396,'حشز ملغمية ( اطفال )','حشز ملغمية ( اطفال )',NULL,NULL,2,0,1,0,NULL,NULL),(397,'حشز ملغمية ( كبار )','حشز ملغمية ( كبار )',NULL,NULL,2,0,1,0,NULL,NULL),(398,'حشو كومبوزيت امامى','حشو كومبوزيت امامى',NULL,NULL,2,0,1,0,NULL,NULL),(399,'حشو كومبوزيت خلفى','حشو كومبوزيت خلفى',NULL,NULL,2,0,1,0,NULL,NULL),(400,'حشو تثبيت بمسامير دعامية','حشو تثبيت بمسامير دعامية',NULL,NULL,2,0,1,0,NULL,NULL),(401,'حشو مع وتد بالجذر','حشو مع وتد بالجذر',NULL,NULL,2,0,1,0,NULL,NULL),(402,'تركيب نصف طقم اسنان كامل - زيارة اولى','تركيب نصف طقم اسنان كامل - زيارة اولى',NULL,NULL,2,0,1,0,NULL,NULL),(403,'تركيب نصف طقم اسنان كامل - زيارة ثانية','تركيب نصف طقم اسنان كامل - زيارة ثانية',NULL,NULL,2,0,1,0,NULL,NULL),(404,'تركيبات الاسنان - زيارة اولى','تركيبات الاسنان - زيارة اولى',NULL,NULL,2,0,1,0,NULL,NULL),(405,'تركيبات الاسنان - زيارة ثانية','تركيبات الاسنان - زيارة ثانية',NULL,NULL,2,0,1,0,NULL,NULL),(406,'تركيب طقم اسنان جزئ متحرك - للسنة الواحده','تركيب طقم اسنان جزئ متحرك - للسنة الواحده',NULL,NULL,2,0,1,0,NULL,NULL),(407,'تركيب طربوش معدنى اطفال','تركيب طربوش معدنى اطفال',NULL,NULL,2,0,1,0,NULL,NULL),(408,'تركيب طربوش نيكل كروم','تركيب طربوش نيكل كروم',NULL,NULL,2,0,1,0,NULL,NULL),(409,'طقم فيتاليوم - للفك الواحد - زيارة اولى','طقم فيتاليوم - للفك الواحد - زيارة اولى',NULL,NULL,2,0,1,0,NULL,NULL),(410,'طقم فيتاليوم - للفك الواحد - زيارة ثانية','طقم فيتاليوم - للفك الواحد - زيارة ثانية',NULL,NULL,2,0,1,0,NULL,NULL),(411,'طقم فيتاليوم - للفك الواحد - زيارة ثالثة','طقم فيتاليوم - للفك الواحد - زيارة ثالثة',NULL,NULL,2,0,1,0,NULL,NULL),(412,'طقم فيتاليوم - للفك الواحد - زيارة رابعه','طقم فيتاليوم - للفك الواحد - زيارة رابعه',NULL,NULL,2,0,1,0,NULL,NULL),(413,'طقم اسنان كامل ليين زيارة اولى','طقم اسنان كامل ليين زيارة اولى',NULL,NULL,2,0,1,0,NULL,NULL),(414,'طقم اسنان كامل ليين زيارة ثانيا','طقم اسنان كامل ليين زيارة ثانيا',NULL,NULL,2,0,1,0,NULL,NULL),(415,'طقم اسنان كامل ليين زيارة ثالثا','طقم اسنان كامل ليين زيارة ثالثا',NULL,NULL,2,0,1,0,NULL,NULL),(416,'طقم اسنان كامل ليين زيارة رابعا','طقم اسنان كامل ليين زيارة رابعا',NULL,NULL,2,0,1,0,NULL,NULL),(417,'طقم اسنان كامل اكريل - زيارة اولى','طقم اسنان كامل اكريل - زيارة اولى',NULL,NULL,2,0,1,0,NULL,NULL),(418,'طقم اسنان كامل اكريل - زيارة ثانيه','طقم اسنان كامل اكريل - زيارة ثانيه',NULL,NULL,2,0,1,0,NULL,NULL),(419,'طقم اسنان كامل اكريل - زيارة ثالثة','طقم اسنان كامل اكريل - زيارة ثالثة',NULL,NULL,2,0,1,0,NULL,NULL),(420,'طقم اسنان كامل اكريل - زيارة رابعه','طقم اسنان كامل اكريل - زيارة رابعه',NULL,NULL,2,0,1,0,NULL,NULL),(421,'زرع اسنان بيوهوريزونز امريكى','زرع اسنان بيوهوريزونز امريكى',NULL,NULL,2,0,1,0,NULL,NULL),(422,'زرع اسنان بيوهوريزونز سويسرى','زرع اسنان بيوهوريزونز سويسرى',NULL,NULL,2,0,1,0,NULL,NULL),(423,'طربوش زركونيوم _ زيارة اولى','طربوش زركونيوم _ زيارة اولى',NULL,NULL,2,0,1,0,NULL,NULL),(424,'طربوش زركونيوم _ زيارة ثانه','طربوش زركونيوم _ زيارة ثانه',NULL,NULL,2,0,1,0,NULL,NULL),(425,'كشف بالاشعه لسنة واحده او ضرس واحد','كشف بالاشعه لسنة واحده او ضرس واحد',NULL,NULL,2,0,1,0,NULL,NULL),(426,'دعامة زيركونيم','دعامة زيركونيم',NULL,NULL,2,0,1,0,NULL,NULL),(427,'سنة فليكسبل اضافيه','سنة فليكسبل اضافيه',NULL,NULL,2,0,1,0,NULL,NULL),(428,'قشرة كومبوزيت لاسنان امامية','قشرة كومبوزيت لاسنان امامية',NULL,NULL,2,0,1,0,NULL,NULL),(429,'تغطية داخلية من الكومبوزيت','تغطية داخلية من الكومبوزيت',NULL,NULL,2,0,1,0,NULL,NULL),(430,'بناء نتوء السنة بالكمبوزيت خلفى','بناء نتوء السنة بالكمبوزيت خلفى',NULL,NULL,2,0,1,0,NULL,NULL),(431,'زرع اسنان الزيارة الأولى','زرع اسنان الزيارة الأولى',NULL,NULL,2,0,1,0,NULL,NULL),(432,'زرع اسنان الزيارة التانية','زرع اسنان الزيارة التانية',NULL,NULL,2,0,1,0,NULL,NULL),(433,'زرع اسنان الزيارة التالتة','زرع اسنان الزيارة التالتة',NULL,NULL,2,0,1,0,NULL,NULL),(434,'زرع اسنان الزيارة الرابعة','زرع اسنان الزيارة الرابعة',NULL,NULL,2,0,1,0,NULL,NULL),(435,'زرع اسنان الزيارة الخامسة','زرع اسنان الزيارة الخامسة',NULL,NULL,2,0,1,0,NULL,NULL),(436,'حقن بلازما بتجويف الاسنان','حقن بلازما بتجويف الاسنان',NULL,NULL,2,0,1,0,NULL,NULL),(437,'جهاز تقويم لتحسين اطباق الفكين','جهاز تقويم لتحسين اطباق الفكين',NULL,NULL,2,0,1,0,NULL,NULL),(438,'زيارة تركيب تقويم شفاف أولى','زيارة تركيب تقويم شفاف أولى',NULL,NULL,2,0,1,0,NULL,NULL),(439,'زيارة تركيب تقويم شفاف ثانية','زيارة تركيب تقويم شفاف ثانية',NULL,NULL,2,0,1,0,NULL,NULL),(440,'زيارة تركيب تقويم معدنى أولى','زيارة تركيب تقويم معدنى أولى',NULL,NULL,2,0,1,0,NULL,NULL),(441,'زيارة تركيب تقويم معدنى تانية','زيارة تركيب تقويم معدنى تانية',NULL,NULL,2,0,1,0,NULL,NULL),(442,'موسع تقويم للاسنان ثلاثي الابعاد','موسع تقويم للاسنان ثلاثي الابعاد',NULL,NULL,2,0,1,0,NULL,NULL);
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting`
--

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` VALUES (1,'JoinUs','it@care-hub.net','2022-02-14 12:54:15','2022-02-14 12:54:15'),(2,'CallCenter','it@care-hub.net','2022-02-14 12:54:15','2022-02-14 12:54:15'),(3,'Emergency','it@care-hub.net','2022-02-14 12:54:15','2022-02-14 12:54:15'),(4,'InPatient','it@care-hub.net','2022-02-14 12:54:15','2022-02-14 12:54:15'),(5,'OutPatient','a.esmaeel@care-hub.net','2022-02-14 12:54:15','2022-03-02 15:52:01');
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialty`
--

DROP TABLE IF EXISTS `specialty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specialty` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` bigint unsigned NOT NULL,
  `disabled` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `specialty_name_en_unique` (`name_en`),
  KEY `specialty_parent_id_foreign` (`parent_id`),
  KEY `specialty_admin_id_foreign` (`admin_id`),
  CONSTRAINT `specialty_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE,
  CONSTRAINT `specialty_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `specialty` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialty`
--

LOCK TABLES `specialty` WRITE;
/*!40000 ALTER TABLE `specialty` DISABLE KEYS */;
INSERT INTO `specialty` VALUES (1,'طب الباطنة','Internal Medicine',NULL,NULL,2,0,'2022-02-17 13:11:28','2022-02-17 13:11:28'),(2,'باطنة غدد صماء وسكر','Endocrinology',NULL,NULL,2,0,'2022-02-17 13:11:42','2022-02-17 13:11:42'),(3,'القلب والاوعية الدموية','Cardiology',NULL,NULL,2,0,'2022-02-17 13:11:48','2022-02-17 13:11:48'),(4,'باطنة جهاز هضمي ومناظير','Gastroenterology',NULL,NULL,2,0,'2022-02-17 13:12:00','2022-02-17 13:12:00'),(5,'نساء وتوليد','Obstetrics and Gynecology',NULL,NULL,2,0,'2022-02-17 13:12:10','2022-02-17 13:12:10'),(6,'طب العيون','Ophthalmology',NULL,NULL,2,0,'2022-02-17 13:12:19','2022-02-17 13:12:19'),(7,'طب اطفال','Pediatrics',NULL,NULL,2,0,'2022-02-17 13:12:25','2022-02-17 13:12:25'),(8,'طب الانف والاذن والحنجرة','(Ear, nose and throat (ENT',NULL,NULL,2,0,'2022-02-17 13:12:33','2022-02-17 13:12:33'),(9,'طب الاعصاب','Neurology',NULL,NULL,2,0,'2022-02-17 13:12:49','2022-02-17 13:12:49'),(10,'طب امراض الكلى','nephrology',NULL,NULL,2,0,'2022-02-17 13:12:55','2022-02-17 13:12:55'),(11,'طب الاورام','Oncology',NULL,NULL,2,0,'2022-02-17 13:13:02','2022-02-17 13:13:02'),(12,'المسالك البولية','Urology',NULL,NULL,2,0,'2022-02-17 13:13:09','2022-02-17 13:13:09'),(13,'جلدية','Dermatology',NULL,NULL,2,0,'2022-02-17 13:13:14','2022-02-17 13:13:14'),(14,'الحساسية والمناعة','Allergy and immunology',NULL,NULL,2,0,'2022-02-17 13:13:28','2022-02-17 13:13:28'),(15,'امراض الدم','Hematology',NULL,NULL,2,0,'2022-02-17 13:13:34','2022-02-17 13:13:34'),(16,'الطب العام','General Practitioner',NULL,NULL,2,0,'2022-02-17 13:14:13','2022-02-17 13:14:13'),(17,'طب الطوارىء','Emergency medicine',NULL,NULL,2,0,'2022-02-17 13:14:20','2022-02-17 13:14:20'),(18,'صدرية','صدرية',NULL,NULL,2,0,'2022-02-17 16:04:40','2022-02-17 16:04:40'),(19,'كبد و جهاز هضمي و مناظير','كبد و جهاز هضمي و مناظير',1,NULL,2,0,'2022-02-26 16:24:59','2022-02-28 12:17:16'),(20,'رسم عصب و مدرس علاج طبيعي','رسم عصب و مدرس علاج طبيعي',NULL,NULL,2,0,'2022-02-26 18:49:44','2022-02-26 18:49:44'),(21,'امراض المخ والاعصاب','امراض المخ والاعصاب',NULL,NULL,2,0,'2022-02-26 18:51:44','2022-02-26 18:51:44'),(22,'انف واذن','انف واذن',NULL,NULL,2,0,'2022-02-26 18:52:49','2022-02-26 18:52:49'),(23,'علاج طبيعي','علاج طبيعي',NULL,NULL,2,0,'2022-02-26 18:54:41','2022-02-26 18:54:41'),(24,'شيخوخة','شيخوخة',1,NULL,2,0,'2022-02-26 18:56:10','2022-02-26 18:56:10'),(25,'مناعة','مناعة',1,NULL,2,0,'2022-02-26 18:57:15','2022-02-26 18:57:15'),(26,'تخدير','تخدير',NULL,NULL,2,0,'2022-02-28 09:11:44','2022-02-28 09:11:44'),(27,'جراحة عامة','جراحة عامة',NULL,NULL,2,0,'2022-02-28 09:12:21','2022-02-28 09:12:21'),(28,'جراحة اوعية دموية','جراحة اوعية دموية',27,NULL,2,0,'2022-02-28 09:12:47','2022-02-28 09:12:47'),(29,'جراحة تجميل','جراحة تجميل',27,NULL,2,0,'2022-02-28 09:13:07','2022-02-28 09:13:07'),(30,'جراحة عامة / اورام','جراحة عامة / اورام',27,NULL,2,0,'2022-02-28 09:13:31','2022-02-28 09:13:31'),(31,'جراحة عامة و شرج و قولون','جراحة عامة و شرج و قولون',27,NULL,2,0,'2022-02-28 09:13:48','2022-02-28 09:13:48'),(32,'جراحة عظام','جراحة عظام',27,NULL,2,0,'2022-02-28 09:14:09','2022-02-28 09:14:09'),(33,'جراحة مخ واعصاب','جراحة مخ واعصاب',27,NULL,2,0,'2022-02-28 09:14:22','2022-02-28 09:14:22'),(34,'جلدية وتناسلية','جلدية وتناسلية',NULL,NULL,2,0,'2022-02-28 09:14:38','2022-02-28 09:14:38'),(35,'سكر / غدد صماء / تغذية علاجية','سكر / غدد صماء / تغذية علاجية',NULL,NULL,2,0,'2022-02-28 09:36:13','2022-02-28 09:36:13'),(36,'عناية وحالات حرجة','عناية وحالات حرجة',NULL,NULL,2,0,'2022-02-28 09:36:30','2022-02-28 09:39:21'),(37,'نفسية وعلاج ادمان','نفسية وعلاج ادمان',NULL,NULL,2,0,'2022-02-28 11:34:23','2022-02-28 11:34:23'),(38,'رسم عصب وعلاج طبيعي وروماتزم','رسم عصب وعلاج طبيعي وروماتزم',NULL,NULL,2,0,'2022-02-28 11:39:37','2022-02-28 11:39:37'),(39,'عناية و طوارئ','عناية و طوارئ',NULL,NULL,2,0,'2022-02-28 11:44:30','2022-02-28 11:44:30'),(40,'كبد و جهاز هضمي و حميات','كبد و جهاز هضمي و حميات',NULL,NULL,2,0,'2022-02-28 12:17:39','2022-02-28 12:17:39');
/*!40000 ALTER TABLE `specialty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int DEFAULT '1',
  `verification` int DEFAULT '0',
  `quick` int DEFAULT NULL,
  `gender` int DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `governorate_id` bigint unsigned DEFAULT NULL,
  `city_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adress2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatapp2` int DEFAULT NULL,
  `whatapp` int DEFAULT NULL,
  `apartment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `floor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `land_mark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_zone_patient_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_owner_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_num` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_phone_unique` (`phone`),
  KEY `users_nationality_code_foreign` (`nationality_code`),
  KEY `users_governorate_id_foreign` (`governorate_id`),
  CONSTRAINT `users_governorate_id_foreign` FOREIGN KEY (`governorate_id`) REFERENCES `governorates` (`id`) ON DELETE CASCADE,
  CONSTRAINT `users_nationality_code_foreign` FOREIGN KEY (`nationality_code`) REFERENCES `countries` (`country_code`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1182 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,NULL,NULL,'ijnji',NULL,NULL,'01121426196',NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$sCAHPETK1cU5jnFX9Hc/5.fYXO.MUOf69Si1LiUK5B6ttm4PB55.i',NULL,'2022-02-13 11:04:42','2022-02-13 11:04:42'),(2,NULL,NULL,'Anas',NULL,NULL,'01097540411',NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$aIA8AQnwrsheDTzrgqizm.eB.xzbL2qLDelt/bRf7jvxIqCe8kABS',NULL,'2022-02-14 12:35:53','2022-02-14 12:35:53'),(3,NULL,NULL,'qqq123456789',NULL,NULL,'123456789',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$Hq2wfB4Zu/nS9EqbVMKHQOdVmXO2iJwi/xhe4NxTugWykSiRcbUZK',NULL,'2022-02-16 15:09:12','2022-02-16 15:09:12'),(4,NULL,NULL,'احمد كمال',NULL,NULL,'01097540433',NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$ghgPFPlYzjVnBj4teFrRuOM1R9Xhs4WihrG0jCJlr4s5fpEHYuIcm',NULL,'2022-02-17 12:47:34','2022-02-17 12:47:34'),(5,NULL,NULL,'حازوووم',NULL,NULL,'01288585904',NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$jkSyUObKqRaqukjTGofgkOkx11VeZuA1cq4dcqiqH4J1OdooEoKXC',NULL,'2022-02-17 14:01:03','2022-02-17 14:01:03'),(6,NULL,NULL,'ايه سيف الدين',NULL,NULL,'01011654903',NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$3VW93jcTpOH65QwLw86rh.R6LmyBCDQ4.x0BGo8ZK7fFHJBamxL1u',NULL,'2022-02-17 14:12:17','2022-02-17 14:12:17'),(7,NULL,NULL,'ايه مطر',NULL,NULL,'01282087732',NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$rVcIZ4R4tM8fYBK7AyZ39eUROc3r049XbKzVAN6ZBINzbBl/USNLS',NULL,'2022-02-17 14:23:43','2022-02-17 14:23:43'),(8,NULL,NULL,'د.احمد يوسف - صدرية',NULL,NULL,'012',NULL,2,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$Hbnxf5rOBjqgw.WC8BWoRe0g4UKK.hs8UC6X0rQBNtNylzM7dpmfO',NULL,'2022-02-17 15:33:19','2022-02-17 15:33:19'),(9,NULL,NULL,'د. احمد يوسف -مسالك',NULL,NULL,'11',NULL,2,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$LfRAW7MozSZA49t.kQBeeO02QE.maD13JrlYVgJ9x8Al8jbcdfALC',NULL,'2022-02-17 15:33:41','2022-02-17 15:33:41'),(10,NULL,NULL,'اميره هاني محمد السيد ابراهيم',NULL,NULL,'01270074978',NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$6fpGQeiLjkRUKHukKP9bsOFaaHGEAycSz1yHGibf6VkcoU6q6idtm',NULL,'2022-02-21 11:07:49','2022-02-21 11:07:49'),(11,NULL,NULL,'امال محمد قباني',NULL,NULL,'01221523400',NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$vKmVHXQ4FILJrRsN2K1cWeamn6.iD.IuSOF9p64v.hFSd3wK0N6Uy',NULL,'2022-02-21 11:45:34','2022-02-21 11:45:34'),(12,NULL,NULL,'سعيد حسنين علي',NULL,NULL,'01228788855',NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$fscVLncoez9uYsDD2riESOBCQ7GHp.N1bIK.kNnDpDhY4QFs08ccy',NULL,'2022-02-21 12:46:52','2022-02-21 12:46:52'),(13,NULL,NULL,'Anas',NULL,NULL,'01097540522',NULL,4,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$w/jLjheHxJRffIieOWxCjeNjq5rSRBTMdYprXkYU62/LfgWyfm7ZO',NULL,'2022-02-21 12:47:44','2022-02-21 12:47:44'),(14,NULL,NULL,'أحمد محمد أحدم',NULL,NULL,'01030221107',NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$2b4F0lgCOlOHk6kS8UUpD.ZC.dzIcB.ap80rQxamHU67oHs5yVEoi',NULL,'2022-02-21 13:11:51','2022-02-21 13:11:51'),(15,NULL,NULL,'هبه السيد محمد محمد الشامي',NULL,NULL,'01212737383',NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$3bHk2RQPeQ90o1d7Dx7C3OKL3sxuo3eCLYMsjrlYSbRAViqKECJIS',NULL,'2022-02-21 14:38:55','2022-02-21 14:38:55'),(16,NULL,NULL,'ماجدة عزمي مهند',NULL,NULL,'01101230127',NULL,4,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$32kh7fy3rSH.tNbAgo4IH.MNoRCbyNtcRwroLgVTst5X4oaPx82em',NULL,'2022-02-21 14:43:06','2022-02-23 07:10:21'),(17,NULL,NULL,'اسماء ابراهيم رزق',NULL,NULL,'01008549091',NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$d1PmEB2zXdIlU.9OwnLpSur/cA32IRvtrM/ypFkkME4L8DKDFKYNq',NULL,'2022-02-21 14:52:18','2022-02-21 14:52:18'),(18,NULL,NULL,'اكرم محمد انور السيد',NULL,NULL,'01001322233',NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$k32XQ.29wd9YNM970DRFdeskOzGmETh6NHin/10jzfJQRUl/B1NS.',NULL,'2022-02-21 15:02:20','2022-02-21 15:02:20'),(19,NULL,NULL,'محمد سعد علي',NULL,NULL,'01200220348',NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$QTDmwYpJH/yh.rYzo6tqVO26v4kxxqazQ93yjCC/usbw24SbclMKG',NULL,'2022-02-21 15:38:39','2022-02-21 15:38:39'),(20,NULL,NULL,'هالة محمد مرسي',NULL,NULL,'01201391789',NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$51c3YvZ.RONb0htjYNx2tuD8vlqnHVNkUn5/GU7wubpVUzJ8RIKs.',NULL,'2022-02-21 17:03:18','2022-02-21 17:03:18'),(21,NULL,NULL,'فردوس ابراهيم ابو حجازيه',NULL,NULL,'01065160947',NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$E7cWFRSBcCDx3/odKI8eROdNRrXByEEB9xtcR.WXYgyCSvv3jnPLK',NULL,'2022-02-22 09:34:07','2022-02-22 09:34:07'),(22,NULL,NULL,'فايزة عبدالقادر ابو الحمد',NULL,NULL,'01002480750',NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$eQHuIkNH/z87Z9vXnMtrKOqz3sn3ihH6scVAzxfEPUsUV4T54puLG',NULL,'2022-02-22 09:49:52','2022-02-22 09:49:52'),(23,NULL,NULL,'السيدة بهجة مصطفى',NULL,NULL,'01011694770',NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$woIPf/wjNrgHEaVt5eIItuf5.ceJeGHxR83SP0Yka3pk8NTsd2Vb.',NULL,'2022-02-22 15:56:18','2022-02-22 15:56:18'),(24,NULL,NULL,'سلوى عبدالحميد القفاس',NULL,NULL,'01007154698',NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$MuDiYoWvZUOWp3SLhcZDTu027IsWao0hxLS8wsY0cN6b.EDP9uKjq',NULL,'2022-02-22 18:45:36','2022-02-22 18:45:36'),(25,NULL,NULL,'صباح احمد محمد',NULL,NULL,'01220337165',NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$CAhyWcVNNBWj6Lu706rvKeZI3B57g.SzEXZ4G2Lehlg2ZnLCdI5nm',NULL,'2022-02-23 10:39:46','2022-02-23 10:39:46'),(26,NULL,NULL,'محمد ناجي احمد',NULL,NULL,'01119994007',NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$E7OybKGgJ493VoHh2dIImeu4zeraIDIPrMYbg0eUqCSyl2EVKLw5K',NULL,'2022-02-23 12:52:02','2022-02-23 12:52:02'),(27,NULL,NULL,'أحمد حماد المصيري',NULL,NULL,'01127773774',NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$G8LkEBY4QLc2ob5W4WvXUeh9jtmHQ9Mrod2E8tkBPZQt7RzV2In0C',NULL,'2022-02-23 13:06:40','2022-02-23 13:06:40'),(28,NULL,NULL,'وفاء احمد محمد عيسي',NULL,NULL,'01281809959',NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$W0U.bg0C3QpZpzSAAaffJOqPhmvl0fyhPgWNvmiRB5dAxRUak3iV.',NULL,'2022-02-23 17:07:34','2022-02-23 17:07:34'),(29,NULL,NULL,'فريدة عبدالرحيم الشافعي',NULL,NULL,'01273525603',NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$WRQIcUXoBhGedKWniqhV3..9tNaC50FnsMh1l7HPbcnsbGkBFAh8K',NULL,'2022-02-23 17:09:36','2022-02-23 17:09:36'),(30,NULL,NULL,'تغريد عبدالله رضى',NULL,NULL,'01006626062',NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$i2vCoqWXUgWEoWTjXrHnl.daoT9ea7WAnIBAcab8.8xiaLpLaXDf.',NULL,'2022-02-25 20:45:54','2022-02-25 20:45:54'),(31,NULL,NULL,'حيات أحمد أحمد',NULL,NULL,'01122209999',NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$sEy088zj.9HHFh64ViUuue4ESRyueGaVZsM1L2AOOpoAfllx0YcQO',NULL,'2022-02-25 20:47:22','2022-02-25 20:47:22'),(32,NULL,NULL,'كاتي رزق رزق',NULL,NULL,'01277386969',NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$ApnPl6jdq6p0Ax5YemOvX.rsl9mevrwL2FFbO6MOik3F3Y.LOMbSC',NULL,'2022-02-25 23:53:43','2022-02-25 23:53:43'),(33,NULL,NULL,'سلوى عوض بيومي',NULL,NULL,'01221201950',NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$8S/FrFWXbInVmxyQE6NZjeyQdh5lNOrg7KDlsImtVVRzK5dd/4ha.',NULL,'2022-02-26 11:13:28','2022-02-26 11:13:28'),(34,NULL,NULL,'محمد احمد محمد',NULL,NULL,'01284683683',NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$zkUd3hqAAcFX2Tj1uuYd8uOfz6zfhM7KPj/nFP5CUnXulVYuauudS',NULL,'2022-02-26 12:38:46','2022-02-26 12:38:46'),(35,NULL,NULL,'احمد محمد علاء الدين',NULL,NULL,'01004246864',NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$vq4e5zhwjAWo0uAuG1QRh.OdZGExl5cobw9FI2SjLTD3EId/jHrUu',NULL,'2022-02-27 09:31:56','2022-02-27 09:31:56'),(36,NULL,NULL,'فوقية عبد المجيد ياقوت',NULL,NULL,'01140030904',NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$i4wAp0mOgOjbOEfIpidPp.IcOMmwVLDqrv7JXAFoEihw16Z/9s1.2',NULL,'2022-02-27 10:25:41','2022-02-27 10:25:41'),(1000,NULL,NULL,'ابراهيم السيد',NULL,NULL,'1093459970',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1001,NULL,NULL,'ابراهيم عبد الفتاح',NULL,NULL,'1553566609',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1002,NULL,NULL,'احمد الحضري',NULL,NULL,'1287332937',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1003,NULL,NULL,'احمد السماديسي',NULL,NULL,'1147747736',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1004,NULL,NULL,'احمد جنيدي',NULL,NULL,'1285569210',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1005,NULL,NULL,'احمد حجازي',NULL,NULL,'1226597670',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1006,NULL,NULL,'احمد حسن',NULL,NULL,'1005717746/1114221141',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1007,NULL,NULL,'احمد خليل 2012',NULL,NULL,'01007159197/01286369427',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1008,NULL,NULL,'احمد رجب',NULL,NULL,'1001797019',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1009,NULL,NULL,'احمد رجب 2017',NULL,NULL,'01221054720/01015330224',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1010,NULL,NULL,'احمد رمضان',NULL,NULL,'1001658059',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1011,NULL,NULL,'احمد شبانة',NULL,NULL,'1141461611',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1012,NULL,NULL,'احمد صبري',NULL,NULL,'1224263690',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1013,NULL,NULL,'احمد طه',NULL,NULL,'1012535437',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1014,NULL,NULL,'احمد علبة',NULL,NULL,'1221493258',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1015,NULL,NULL,'احمد عويضة',NULL,NULL,'1015316602',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1016,NULL,NULL,'احمد فتح الله صدقي',NULL,NULL,'1202877220',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1017,NULL,NULL,'احمد فتحي',NULL,NULL,'1028440077',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1018,NULL,NULL,'احمد فرج',NULL,NULL,'1111609023',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1019,NULL,NULL,'احمد قاسم',NULL,NULL,'1275154080',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1020,NULL,NULL,'احمد كمال كمال',NULL,NULL,'1011423580',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1021,NULL,NULL,'احمد محسب',NULL,NULL,'1278135586',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1022,NULL,NULL,'احمد ناصر',NULL,NULL,'1277948131',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1023,NULL,NULL,'اسعد لويس',NULL,NULL,'1003714680',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1024,NULL,NULL,'اسلام 2017',NULL,NULL,'1206121833',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1025,NULL,NULL,'اسلام عطا',NULL,NULL,'01222751703 / 01063772294',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1026,NULL,NULL,'اسلام محب',NULL,NULL,'1210864168',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1027,NULL,NULL,'اسلام محمد رضا',NULL,NULL,'1012508478',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1028,NULL,NULL,'اشرف قاسم',NULL,NULL,'1097979965',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1029,NULL,NULL,'الجمل',NULL,NULL,'01092112249/01206830100',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1030,NULL,NULL,'الحسن محمد ايمن',NULL,NULL,'1206029300',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1031,NULL,NULL,'المنخلي',NULL,NULL,'1555257050',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1032,NULL,NULL,'امجد ميلاد متري',NULL,NULL,'1223792492',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1033,NULL,NULL,'اية شوقي',NULL,NULL,'1008121773',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1034,NULL,NULL,'ايمان رمضان',NULL,NULL,'01112454251/01027850006',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1035,NULL,NULL,'ايمن معالي',NULL,NULL,'1002258463',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1036,NULL,NULL,'ايميل عطالله',NULL,NULL,'1226427133',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1037,NULL,NULL,'ايهاب عماد الدين',NULL,NULL,'1555596951',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1038,NULL,NULL,'إبراهيم فرج',NULL,NULL,'1114093738',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1039,NULL,NULL,'إسماعيل محمد شريف نوح',NULL,NULL,'1017392233',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1040,NULL,NULL,'إيمان رمضان',NULL,NULL,'1112454251',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1041,NULL,NULL,'أحمد ابو زيد',NULL,NULL,'1224037753',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1042,NULL,NULL,'أحمد شعبان',NULL,NULL,'1006909094',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1043,NULL,NULL,'أحمد صابر',NULL,NULL,'1006447391',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1044,NULL,NULL,'أحمد كمال علي',NULL,NULL,'1279734654',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1045,NULL,NULL,'أحمد محسن',NULL,NULL,'1007113236',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1046,NULL,NULL,'أحمد معوض عبدالعظيم',NULL,NULL,'1099892978',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1047,NULL,NULL,'أحمد نبيل',NULL,NULL,'1149363246',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1048,NULL,NULL,'أكرم فوزي محمد',NULL,NULL,'1117994901',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1049,NULL,NULL,'بيتر ريمون',NULL,NULL,'1223619942',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1050,NULL,NULL,'تامر فاروق',NULL,NULL,'1021592573',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1051,NULL,NULL,'جان جاك جوده',NULL,NULL,'1200876100',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1052,NULL,NULL,'جوزيف يسري يوسف',NULL,NULL,'1552265430',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1053,NULL,NULL,'جون انيس',NULL,NULL,'1224679155',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1054,NULL,NULL,'حازم حافظ',NULL,NULL,'1008183796',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1055,NULL,NULL,'خالد عزت',NULL,NULL,'1005212928',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1056,NULL,NULL,'خالد محمد مصطفي علي',NULL,NULL,'1001293288',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1057,NULL,NULL,'دعاء حمدي',NULL,NULL,'1007111402',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1058,NULL,NULL,'دينا محمود الحصري',NULL,NULL,'1205340840',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1059,NULL,NULL,'رفيق عدلي',NULL,NULL,'1002338961',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1060,NULL,NULL,'روماني سمير',NULL,NULL,'1201259507',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1061,NULL,NULL,'زياد فهمي',NULL,NULL,'01063620518-01225988385',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1062,NULL,NULL,'زينب جابر عجمي',NULL,NULL,'1125948170',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1063,NULL,NULL,'سارة صلاح',NULL,NULL,'1111974396',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1064,NULL,NULL,'سعيد محمد خليل',NULL,NULL,'1221337058',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1065,NULL,NULL,'سليمان 2015',NULL,NULL,'1228803523',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1066,NULL,NULL,'سمر سعد اللبان',NULL,NULL,'1275602154',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1067,NULL,NULL,'سهيل ايمن فخري',NULL,NULL,'1112420392',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1068,NULL,NULL,'شادي شلبي',NULL,NULL,'01027743229/01228358668',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1069,NULL,NULL,'شريف عبد السلام',NULL,NULL,'1003998913',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1070,NULL,NULL,'شهاب اشرف حمزة',NULL,NULL,'1005172264',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1071,NULL,NULL,'ضحي مجدي',NULL,NULL,'1011554222',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1072,NULL,NULL,'عُمر المهدي',NULL,NULL,'1001742013',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1073,NULL,NULL,'عادل اسماعيل',NULL,NULL,'1112182164',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1074,NULL,NULL,'عادل عبد الرحمن الشاذلي',NULL,NULL,'1222148014',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1075,NULL,NULL,'عاصم غزلان',NULL,NULL,'111165 6255/1008421927',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1076,NULL,NULL,'عبد الحميد بدر الدين',NULL,NULL,'1008158544',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1077,NULL,NULL,'عبد الرحمن 2017',NULL,NULL,'1552500425',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1078,NULL,NULL,'عبد الرحمن خضر',NULL,NULL,'1100267994',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1079,NULL,NULL,'عبد الرحمن سعودي',NULL,NULL,'/1552500425',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1080,NULL,NULL,'عبد الرحمن مصطفي',NULL,NULL,'01092871231---01554517557',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1081,NULL,NULL,'عبد العزيز امين عبد العزيز',NULL,NULL,'01019399599-01118432844',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1082,NULL,NULL,'عبد العظيم 2016',NULL,NULL,'01271975404/01100710464',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1083,NULL,NULL,'عبد الله 2015',NULL,NULL,'01099574139/01278060517',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1084,NULL,NULL,'عبد الله عباس',NULL,NULL,'1062133775',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1085,NULL,NULL,'عبدالرحمن يوسف',NULL,NULL,'1204667330',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1086,NULL,NULL,'عبدالعزيز صلاح مصطفي',NULL,NULL,'1001528915',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1087,NULL,NULL,'علاء الدخس',NULL,NULL,'1005378925',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1088,NULL,NULL,'علاء عبدالسلام داود',NULL,NULL,'1223525385',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1089,NULL,NULL,'علاء فاروق الراعي',NULL,NULL,'1223411715',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1090,NULL,NULL,'علي الشداد 2017',NULL,NULL,'1097528999',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1091,NULL,NULL,'علي أبو شادي',NULL,NULL,'1128381538',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1092,NULL,NULL,'عماد حمدي',NULL,NULL,'01226157150/0101027900',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1093,NULL,NULL,'عماد زكريا',NULL,NULL,'1006005742',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1094,NULL,NULL,'عمار نعينع',NULL,NULL,'1003098772',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1095,NULL,NULL,'عمر رأفت',NULL,NULL,'1025638268',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1096,NULL,NULL,'عمر رياض',NULL,NULL,'01025638268',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1097,NULL,NULL,'عمر سعيد',NULL,NULL,'1225527928',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1098,NULL,NULL,'عمرو خليفة',NULL,NULL,'1009785353',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1099,NULL,NULL,'عمرو سمير',NULL,NULL,'0000000000',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1100,NULL,NULL,'عمرو محمود',NULL,NULL,'1223762937',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1101,NULL,NULL,'عمرو محمود الجوهري',NULL,NULL,'1114525168',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1102,NULL,NULL,'عيادات الفور سيزون',NULL,NULL,'1001590283',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1103,NULL,NULL,'غنيمي 2015',NULL,NULL,'01018387187/01202980131',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1104,NULL,NULL,'فؤاد محمد النجار',NULL,NULL,'1001706704',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1105,NULL,NULL,'كريم احمد',NULL,NULL,'1224006583',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1106,NULL,NULL,'كريم الشرقاوي',NULL,NULL,'1002387158',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1107,NULL,NULL,'كريم حسين',NULL,NULL,'1111865171',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1108,NULL,NULL,'كريم غنة',NULL,NULL,'1115619999',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1109,NULL,NULL,'كندة داهر',NULL,NULL,'1012729088',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1110,NULL,NULL,'كيرلس رافت',NULL,NULL,'1205487885',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1111,NULL,NULL,'محمد احمد خميس',NULL,NULL,'0109 390 3891/0127 743 3362',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1112,NULL,NULL,'محمد الحلبي',NULL,NULL,'1006238329',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1113,NULL,NULL,'محمد الخولي',NULL,NULL,'1017626111',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1114,NULL,NULL,'محمد الدسوقي شاهين',NULL,NULL,'1001495543',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1115,NULL,NULL,'محمد المرسي',NULL,NULL,'1206412030',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1116,NULL,NULL,'محمد المقدم',NULL,NULL,'1090312713',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1117,NULL,NULL,'محمد المنصوري',NULL,NULL,'1272207585',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1118,NULL,NULL,'محمد إبراهيم',NULL,NULL,'1122050696',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1119,NULL,NULL,'محمد أحمد المصري',NULL,NULL,'1220372222',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1120,NULL,NULL,'محمد بلبع',NULL,NULL,'1007534450',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1121,NULL,NULL,'محمد خليل',NULL,NULL,'1001067460',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1122,NULL,NULL,'محمد خميس جمعة',NULL,NULL,'1004985050',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1123,NULL,NULL,'محمد ذكي',NULL,NULL,'1001817586',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1125,NULL,NULL,'محمد زكريا ابراهيم',NULL,NULL,'1065178737',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1126,NULL,NULL,'محمد سعيد عشرى',NULL,NULL,'01229616902 / 4808550',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1127,NULL,NULL,'محمد سمير عبد الحميد',NULL,NULL,'1227593866',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1128,NULL,NULL,'محمد صلاح',NULL,NULL,'1278863680',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1130,NULL,NULL,'محمد عبد الكريم الزوقة',NULL,NULL,'1221324181',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1131,NULL,NULL,'محمد علاء 2016',NULL,NULL,'01553353378/01210813068',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1132,NULL,NULL,'محمد علي',NULL,NULL,'1279169398',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1133,NULL,NULL,'محمد عمارة',NULL,NULL,'1007252877',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1134,NULL,NULL,'محمد عيسي',NULL,NULL,'1229759583',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1135,NULL,NULL,'محمد فتحي بقوش',NULL,NULL,'1066880273',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1136,NULL,NULL,'محمد فؤاد',NULL,NULL,'1121132253/1063633313',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1137,NULL,NULL,'محمد مجدي عبد المنعم منسي',NULL,NULL,'1002820343',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1138,NULL,NULL,'محمد ممدوح',NULL,NULL,'1068055103',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1139,NULL,NULL,'محمود 2017',NULL,NULL,'1273807059',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1140,NULL,NULL,'محمود الخطيب',NULL,NULL,'1025386742',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1141,NULL,NULL,'محمود عماد',NULL,NULL,'1224019808',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1142,NULL,NULL,'محمود مدحت',NULL,NULL,'01003567957-01123452773',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1143,NULL,NULL,'محمود منصور',NULL,NULL,'1094402221',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1144,NULL,NULL,'محمود وجيه',NULL,NULL,'1020714036',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1145,NULL,NULL,'محمود ياسر صبري',NULL,NULL,'1001742037',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1146,NULL,NULL,'مدحت محرم',NULL,NULL,'01001247268/0155240240',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1147,NULL,NULL,'مروة الشامي',NULL,NULL,'1099997558',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1148,NULL,NULL,'مروة سعد جودة',NULL,NULL,'1222571192',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1149,NULL,NULL,'مساعدين د مصطفي علواني',NULL,NULL,'1222369420',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1150,NULL,NULL,'مستشفي avc',NULL,NULL,'1001075112',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1151,NULL,NULL,'مسعد انور حميدة',NULL,NULL,'1223916428',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1152,NULL,NULL,'مصطفي صوابي',NULL,NULL,'1098717554',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1153,NULL,NULL,'مصطفي محمود',NULL,NULL,'1009877297',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1154,NULL,NULL,'معاذ 2015',NULL,NULL,'01143207047/01066769111',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1155,NULL,NULL,'ممدوح سعد',NULL,NULL,'1552595030',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1156,NULL,NULL,'منار مختار',NULL,NULL,'1227586112',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1157,NULL,NULL,'منصور 2017',NULL,NULL,'01022516851/01203052192',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1158,NULL,NULL,'منصور الليثي',NULL,NULL,'1023766011',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1159,NULL,NULL,'مهاب الانصاري',NULL,NULL,'1121198329',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1160,NULL,NULL,'مؤمن فوزي',NULL,NULL,'1225367994/1099913853',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1161,NULL,NULL,'مينا اسامة',NULL,NULL,'1060682922',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1162,NULL,NULL,'نادر مجدي',NULL,NULL,'1282046240',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1163,NULL,NULL,'نبيل حسان',NULL,NULL,'1099922602',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1164,NULL,NULL,'نديم حسين بيومي',NULL,NULL,'1223718334',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1165,NULL,NULL,'نرمين السيد',NULL,NULL,'1013984804',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1166,NULL,NULL,'نهي صلاح شاهين',NULL,NULL,'12289815128',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1167,NULL,NULL,'نوران عزب',NULL,NULL,'01144126688 / 01224136153',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1168,NULL,NULL,'هاني شعراوي',NULL,NULL,'1095018889',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1169,NULL,NULL,'هبة نبيل',NULL,NULL,'1224313943',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1170,NULL,NULL,'هشام جمال الامام',NULL,NULL,'1228374262',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1171,NULL,NULL,'هلالي 2015',NULL,NULL,'01061959020/01227499689',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1172,NULL,NULL,'هيثم المليجي',NULL,NULL,'00000000000',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1173,NULL,NULL,'وائل البوهي',NULL,NULL,'1222136977',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1174,NULL,NULL,'وحيد فتحي',NULL,NULL,'1067406780',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1175,NULL,NULL,'وليد وحيد عتمان',NULL,NULL,'1067777216',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1176,NULL,NULL,'ياسر عكاشة',NULL,NULL,'1068631756',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1177,NULL,NULL,'ياسر يحيي',NULL,NULL,'1224611011',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1178,NULL,NULL,'يوسف حسن أبو مندور',NULL,NULL,'1006009499',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1179,NULL,NULL,'يوسف رمضان',NULL,NULL,'1118581296',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1180,NULL,NULL,'يوسف مصري',NULL,NULL,'1220374444',NULL,2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000000000000',NULL,NULL,NULL),(1181,NULL,NULL,'Anas',NULL,NULL,'010975404114',NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$noRRDfqpgEUANV7Me/EyzeXYLjZCKs7OeSVuTq17Fhjvfb94J8PKK',NULL,'2022-03-02 13:35:42','2022-03-02 13:35:42');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_referral`
--

DROP TABLE IF EXISTS `users_referral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_referral` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `referral_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `admin_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_referral_referral_id_foreign` (`referral_id`),
  KEY `users_referral_user_id_foreign` (`user_id`),
  KEY `users_referral_admin_id_foreign` (`admin_id`),
  CONSTRAINT `users_referral_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE,
  CONSTRAINT `users_referral_referral_id_foreign` FOREIGN KEY (`referral_id`) REFERENCES `referral` (`id`) ON DELETE CASCADE,
  CONSTRAINT `users_referral_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_referral`
--

LOCK TABLES `users_referral` WRITE;
/*!40000 ALTER TABLE `users_referral` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_referral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_survey`
--

DROP TABLE IF EXISTS `web_survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_survey` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` int DEFAULT '0',
  `opinion_carehub` int DEFAULT '0',
  `know_carehub` int DEFAULT '0',
  `try_carehub` int DEFAULT '0',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `web_survey_user_id_foreign` (`user_id`),
  CONSTRAINT `web_survey_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_survey`
--

LOCK TABLES `web_survey` WRITE;
/*!40000 ALTER TABLE `web_survey` DISABLE KEYS */;
INSERT INTO `web_survey` VALUES (1,NULL,'fds','01097540411',1,1,1,2,NULL,'2022-03-02 12:06:18','2022-03-02 12:06:18'),(2,NULL,'fds','f',1,1,1,1,NULL,'2022-03-02 12:43:27','2022-03-02 12:43:27');
/*!40000 ALTER TABLE `web_survey` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-03  9:55:44
