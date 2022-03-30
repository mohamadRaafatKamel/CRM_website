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
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `photo` varchar(250) DEFAULT NULL,
  `permission` int NOT NULL DEFAULT '1',
  `remember_token` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Admin','admin@code-flex.com','$2y$10$8myWRaTmc9L9bP4O7GQUe.pd5dzIrMddtEoCq.rQwcWogb6FuIY.a',NULL,0,'uOvaHEuCCzBvoJN0NEJJTNqQ7SbNEncmW5mgb11sbJqXQ2zmq6yTTsrGA8in','2021-12-15 10:06:52','2021-12-15 10:06:52'),(3,'Anas','anas@carehub.com','$2y$10$LRLOAbPVBHuIATnGNMMeHuF59vGv9/W3Zbz6vNXEvagp8LeBa5oDO',NULL,0,'xIgcn0stWk3HS0065k0wEMrTEqYuhkCGj6sHCfjYFQda1IAOXtvalj5Got59','2022-01-09 09:35:18','2022-02-10 12:54:27'),(4,'Menna','menna@carehub.net','$2y$10$fqkvfVPTJpb5XhN4X8JG6ufxYPDoVSoV1QWxmSeE0PIl1wwFJ8tMK',NULL,0,NULL,'2022-02-10 12:55:09','2022-02-10 12:55:09'),(5,'community','community@carehub.net','$2y$10$QPOuPZPq6TeJgeXD6aqv5OGYqaFtU.W8E5iZCxMAz9sbqDMWnekzu',NULL,0,NULL,'2022-02-10 12:57:14','2022-02-10 17:23:28');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `governorate_id` int NOT NULL,
  `city_name_ar` varchar(200) NOT NULL,
  `city_name_en` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=397 DEFAULT CHARSET=utf8mb3;
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
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `org_name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `phone` varchar(250) DEFAULT NULL,
  `website` varchar(250) DEFAULT NULL,
  `contact_person_name` varchar(250) DEFAULT NULL,
  `registration_num` varchar(250) DEFAULT NULL,
  `tax_certificate_num` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `company_info_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_info`
--

LOCK TABLES `company_info` WRITE;
/*!40000 ALTER TABLE `company_info` DISABLE KEYS */;
INSERT INTO `company_info` VALUES (0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `company_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_enName` varchar(100) NOT NULL DEFAULT '',
  `country_arName` varchar(100) NOT NULL DEFAULT '',
  `country_enNationality` varchar(100) NOT NULL DEFAULT '',
  `country_arNationality` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`country_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `specialty_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `specialty_id` (`specialty_id`),
  CONSTRAINT `doc_specialty_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `doc_specialty_ibfk_2` FOREIGN KEY (`specialty_id`) REFERENCES `specialty` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doc_specialty`
--

LOCK TABLES `doc_specialty` WRITE;
/*!40000 ALTER TABLE `doc_specialty` DISABLE KEYS */;
INSERT INTO `doc_specialty` VALUES (10,38,2,'2022-02-01 09:49:30','2022-02-01 09:49:30');
/*!40000 ALTER TABLE `doc_specialty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doc_work`
--

DROP TABLE IF EXISTS `doc_work`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doc_work` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `day` varchar(250) NOT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `doctor_id` (`user_id`),
  CONSTRAINT `doc_work_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doc_work`
--

LOCK TABLES `doc_work` WRITE;
/*!40000 ALTER TABLE `doc_work` DISABLE KEYS */;
INSERT INTO `doc_work` VALUES (6,5,'Sat','17:08:00','23:14:00','2021-12-18 14:05:28','2021-12-18 14:05:28'),(7,5,'Mon',NULL,NULL,'2021-12-18 14:05:28','2021-12-18 14:05:28'),(8,5,'Wed','17:53:00','21:48:00','2021-12-18 14:05:28','2021-12-18 14:05:28');
/*!40000 ALTER TABLE `doc_work` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_info`
--

DROP TABLE IF EXISTS `doctor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `specialty` varchar(250) DEFAULT NULL,
  `cv` varchar(250) DEFAULT NULL,
  `phone1` varchar(250) DEFAULT NULL,
  `phone2` varchar(250) DEFAULT NULL,
  `photo` varchar(250) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `available_time` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `doctor_info_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_info`
--

LOCK TABLES `doctor_info` WRITE;
/*!40000 ALTER TABLE `doctor_info` DISABLE KEYS */;
INSERT INTO `doctor_info` VALUES (0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,5,'1',NULL,'121212','12121',NULL,'kkkkkkkkkkkkkk',NULL,'2021-12-18 10:31:22','2021-12-18 10:31:22'),(3,38,'22',NULL,NULL,NULL,NULL,NULL,NULL,'2022-02-01 09:49:30','2022-02-01 09:49:30');
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
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` int NOT NULL AUTO_INCREMENT,
  `governorate_name_ar` varchar(50) NOT NULL,
  `governorate_name_en` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3;
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
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `experience` varchar(250) DEFAULT NULL,
  `category` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `job_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_request`
--

DROP TABLE IF EXISTS `job_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_request` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `cv` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `id_job` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_job` (`id_job`),
  CONSTRAINT `job_request_ibfk_1` FOREIGN KEY (`id_job`) REFERENCES `job` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_request`
--

LOCK TABLES `job_request` WRITE;
/*!40000 ALTER TABLE `job_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
INSERT INTO `oauth_access_tokens` VALUES ('003629ebca3a126ea69e040d2aee4274afd218432169d7e5f814dc0ec45c940fd6316c6fb400a885',2,2,NULL,'[]',0,'2022-01-03 12:20:04','2022-01-03 12:20:04','2023-01-03 14:20:04'),('01c39bd28b82a56a9d909216824eb8af1e8c83e4ff5c947449a11efceaad85aadff9c8399f361b1c',6,12,'Personal Access Token','[]',0,'2022-01-11 17:35:31','2022-01-11 17:35:31','2022-01-12 17:35:31'),('01d73ee7eed66db2060cb7386b01b0e0a3f2b8af5dd91f84886e3fc95482264de498efad7e6f3ba3',11,12,'Personal Access Token','[]',0,'2022-01-11 15:46:51','2022-01-11 15:46:51','2022-01-12 15:46:51'),('02d36ed1dc561f4afc63602da0cf1fa39f87b27da222c7f71b0cae48d02d130ef9d830b46afd79a9',13,12,'Personal Access Token','[]',0,'2022-01-25 12:09:11','2022-01-25 12:09:11','2022-01-26 12:09:11'),('085124bdfee9ac82429d8936ee637814c263ecf658f261fcd8edfa1d24d491049a2fb1ff45626c28',1,2,NULL,'[]',0,'2022-01-02 11:24:37','2022-01-02 11:24:37','2023-01-02 13:24:37'),('0855426c5cbc013ad6342f76ebb42c4c561f389ce214d2eb12029d4ba444a3e0af8e7212372559b8',2,9,NULL,'[]',0,'2022-01-04 11:02:02','2022-01-04 11:02:02','2023-01-04 11:02:02'),('088660ac38eba5b3931f787f0014b2c66eca0727748ab4b1916bc6939abd7310b8db6328a64767c2',6,12,'Personal Access Token','[]',0,'2022-01-11 17:18:33','2022-01-11 17:18:33','2022-01-12 17:18:33'),('095a36c2903e6468060f36e3ef4753f3db0902ca7fd03a92da15b56dddcd6ce29eaeabbd243f76c4',30,12,'Personal Access Token','[]',0,'2022-01-29 09:54:34','2022-01-29 09:54:34','2022-01-30 09:54:34'),('0b2af99ba809751fdbd903b4829e3a9176f771bf9a6212ca73b7d19e0e7720c8a368f0b9ce4fd777',5,9,NULL,'[]',0,'2022-01-09 11:27:33','2022-01-09 11:27:33','2023-01-09 11:27:33'),('0c02d59a86ca22a6d96e1feb5751602f0ba3a0d3ef80ea74f1f3631917356faed1047494ebaef908',2,2,NULL,'[]',0,'2022-01-02 13:48:02','2022-01-02 13:48:02','2023-01-02 15:48:02'),('0dd877694c6ca6525fbaf99feef96b702680a2a6ed1e9d538e9a3877ba98aa598545a8ba15d05445',12,12,'Personal Access Token','[]',0,'2022-01-11 18:42:49','2022-01-11 18:42:49','2022-01-12 18:42:49'),('0e0659e9ee4e48c02f46d6630a0dee2a5e60d895a975d3116bfd81d6fbc0750f7a685b9290aafa33',32,12,'Personal Access Token','[]',0,'2022-01-29 14:08:57','2022-01-29 14:08:57','2022-01-30 14:08:57'),('16a35d96741255e4a6a4fb3f0e66a242fa82f31a6660b33a77098fadb6c9cd10200ff86aa27e38e5',36,12,'Personal Access Token','[]',0,'2022-01-30 14:27:42','2022-01-30 14:27:42','2022-01-31 14:27:42'),('16e3cda742d5869b9269cec1fcd93428699a486cbc1e58694ec30380df3be367f945da1340682bed',11,12,'Personal Access Token','[]',0,'2022-01-11 17:51:05','2022-01-11 17:51:05','2022-01-12 17:51:05'),('178f47064c5055af29792cc6fed031751842083616aabf0d4e06d410caedaf1056808138c7b7b515',6,12,'Personal Access Token','[]',0,'2022-01-11 17:27:32','2022-01-11 17:27:32','2022-01-12 17:27:32'),('179fa8c73acf0cb2e67c08c7cb1385643fd5dea2622f6d075df1aa12dedb4c1b3618958f13b012f4',13,12,'Personal Access Token','[]',0,'2022-01-30 13:36:18','2022-01-30 13:36:18','2022-01-31 13:36:18'),('18344d99b3132133b4178fa6e8ce8ec0786d61ef67e181f5906c788098260a843805ac3255bd2a47',11,12,'Personal Access Token','[]',0,'2022-01-11 13:43:07','2022-01-11 13:43:07','2022-01-12 13:43:07'),('1d81d2245d4bae8841ff8a66e249bf6ece1fbf2d4e63ea2ca28d7e58210a761e78b532ce04e0320c',11,12,'Personal Access Token','[]',0,'2022-01-11 15:18:08','2022-01-11 15:18:08','2022-01-12 15:18:08'),('22120a186f7d9b557f7be41698f5f7e4d5405cc156eedd20ef67c375abb9c99b935b1c644512e1e8',11,12,'Personal Access Token','[]',0,'2022-01-11 13:39:47','2022-01-11 13:39:47','2022-01-12 13:39:47'),('2865764c486975eba54a8272a37f95e5c4f0e4157f62277f5976fdd8aa97f34423f5ff4c9ca56f60',6,12,'Personal Access Token','[]',0,'2022-01-11 17:20:46','2022-01-11 17:20:46','2022-01-12 17:20:46'),('292001776a1eca4493adcbb4724122b6b26737952348b104f1223d82b194443c5cdaf5035b47e633',6,12,'Personal Access Token','[]',0,'2022-01-11 17:56:15','2022-01-11 17:56:15','2022-01-12 17:56:15'),('311278d2e7c66e35b700c45e522ec467314968997edbf71841102ef5c0a28445f24d3c1c78f4b76f',2,2,NULL,'[]',0,'2022-01-02 13:42:46','2022-01-02 13:42:46','2023-01-02 15:42:46'),('31357e2fdf94478ac007d7dcbc792d7fd05497ff9ae858edd49ffca59f5ae79e08bc0ba62b4131f8',11,12,'Personal Access Token','[]',0,'2022-01-11 15:46:49','2022-01-11 15:46:49','2022-01-12 15:46:49'),('3516c7612c4075713f477274feffaa3ce9e95cd0b777e47e3175c45bfb48d5965d3f0e45a6033eec',2,6,NULL,'[]',0,'2022-01-02 13:12:36','2022-01-02 13:12:36','2023-01-02 15:12:36'),('364d723bda14b2cc0276e7d99be6c4f7fcc3126adaafb4c44df10dccd47a60e2000b5d991c705348',2,2,NULL,'[]',0,'2022-01-02 13:21:02','2022-01-02 13:21:02','2023-01-02 15:21:02'),('369fb22a6a18da843ade04faee678a937da7eac14d5138231b2014e4da3b7aad735aac3eb39ac0ec',11,12,'Personal Access Token','[]',0,'2022-01-11 15:46:51','2022-01-11 15:46:51','2022-01-12 15:46:51'),('3c2f6287d21b442675cf9490dc074be58ad8d6127fb1c6e3e5a009f43cf0ee8fc9218ded0cf0b246',37,12,'Personal Access Token','[]',0,'2022-02-02 16:54:22','2022-02-02 16:54:22','2022-02-03 16:54:22'),('3d152099f8a7a88841a55c70617861363d33dfb2eac087ee703d79e4200b308ed3122953b83e4908',11,12,'Personal Access Token','[]',0,'2022-01-11 15:22:35','2022-01-11 15:22:35','2022-01-12 15:22:35'),('3e48ea4cee084a2d7df9f93db7f760c8b68900d56b074ffba7b9e29cf6449506390bc014d36b5885',6,12,'Personal Access Token','[]',0,'2022-01-31 14:00:50','2022-01-31 14:00:50','2022-02-01 14:00:50'),('3eb46037eacd7796aad22c05c5af0d3f684d77bf9ad5435ca620336815831713092e576ab6c9aa44',14,12,'Personal Access Token','[]',0,'2022-01-26 13:24:14','2022-01-26 13:24:14','2022-01-27 13:24:14'),('442948cbf1e0d98308d61d4a7a37919f0e53f2805112aad756818f7ab38496948c6615809bee6e8a',13,12,'Personal Access Token','[]',0,'2022-02-03 15:47:09','2022-02-03 15:47:09','2022-02-04 15:47:09'),('45895d7cfe9b83ed2edff76721ac01bd3cbec23e296c2912b694ca3825d31bbc5e054979c217ec67',6,12,'Personal Access Token','[]',0,'2022-01-11 17:14:19','2022-01-11 17:14:19','2022-01-12 17:14:19'),('464faa740ed4080f708e5956bab47459424f06effed94d777d10b6ecaa28490c255d4db36941cee0',11,12,'Personal Access Token','[]',0,'2022-01-11 15:17:53','2022-01-11 15:17:53','2022-01-12 15:17:53'),('4e2abe216f36897bee3c82cc32ec2e1c31dfd1f180896c3eae406149c4c37cd88c9cf667e1102c87',6,12,'Personal Access Token','[]',0,'2022-01-11 17:14:30','2022-01-11 17:14:30','2022-01-12 17:14:30'),('50706b4fdfca1c6bc27e0737ad68e87d13d93407c0ac1d9afa9515a6d095d20bf176be2aabd3307a',11,12,'Personal Access Token','[]',0,'2022-01-11 15:46:42','2022-01-11 15:46:42','2022-01-12 15:46:42'),('56502a5034fe494cb480b7c9afc8abe23cefc1f4e174ba100b44032ef0044e736a9e96146a0799f4',6,12,'Personal Access Token','[]',0,'2022-01-11 17:35:39','2022-01-11 17:35:39','2022-01-12 17:35:39'),('56da31baff19fb9bd1b053ef1d8f38d0e6b9dd3f98ba49fb159b0fd6db0368b1f7d2d97929ef7a5a',11,12,'Personal Access Token','[]',0,'2022-01-11 15:32:43','2022-01-11 15:32:43','2022-01-12 15:32:43'),('5a8c463d38fba0c105c6bcfb737eccc05db5d8ef2ddff8a31ea3a511588e4ae7c3abaafe63cd5cfe',27,12,'Personal Access Token','[]',0,'2022-01-27 21:35:06','2022-01-27 21:35:06','2022-01-28 21:35:06'),('5af4a17e634f3e61aaa585feb53d8c4f6f3f184ed513333da8f615026dca07a0e9a9a091b31d64d6',6,12,'Personal Access Token','[]',0,'2022-01-11 17:43:46','2022-01-11 17:43:46','2022-01-12 17:43:46'),('5cc916eb1b76294f071308663b1a22a19feab5e45826e1408f0c5202cdfcbd32dc83e287442e142e',6,12,'Personal Access Token','[]',0,'2022-01-11 17:43:02','2022-01-11 17:43:02','2022-01-12 17:43:02'),('5cce361e1ec4ed10e49cac1661af50365501ef2f304b612e7790956ef860b9de17901b8c77fb76ab',13,12,'Personal Access Token','[]',0,'2022-02-02 08:23:31','2022-02-02 08:23:31','2022-02-03 08:23:31'),('5d598286740edb7adbb67930e92ae5d79866363309986e7b6fc4b9fadea820f52349abf8a88b0513',6,12,'Personal Access Token','[]',0,'2022-01-11 17:45:15','2022-01-11 17:45:15','2022-01-12 17:45:15'),('5f103ea1394f55f4547c972978061df0956ed73046b304229a73cde6619e49431ec571c487c16c92',40,12,'Personal Access Token','[]',0,'2022-02-07 22:04:12','2022-02-07 22:04:12','2022-02-08 22:04:12'),('6037695932d5b1239e5e3ce23e334b67827ecdb517ac7cd4493643dee10ef7a45bbfb67bed6c02ca',6,12,'Personal Access Token','[]',0,'2022-01-11 17:45:54','2022-01-11 17:45:54','2022-01-12 17:45:54'),('61116f21815f3fce4fa0e470536ea8abec659ea48a22d58dcb94437d9b10afee63f45026a1b42a38',13,12,'Personal Access Token','[]',0,'2022-01-31 19:00:59','2022-01-31 19:00:59','2022-02-01 19:00:59'),('61720d11b9ff41a613b53aed38b430efb69daaf5c954bf43279facdf91b4fcdaec89663abcfcdc55',13,12,'Personal Access Token','[]',0,'2022-01-29 16:35:51','2022-01-29 16:35:51','2022-01-30 16:35:51'),('623d51ad90831351b2c21bbd0b8bb6f9fa9049fe9b135baca574e39c687aeea3e52364d55ca01cde',17,12,'Personal Access Token','[]',0,'2022-01-26 13:50:23','2022-01-26 13:50:23','2022-01-27 13:50:23'),('63770e80d3124d845bd55cd9fee099a89ac5fff816b4953048c7ca82c1bbaffedc4f8d06dd4ab80c',11,12,'Personal Access Token','[]',0,'2022-01-11 15:21:10','2022-01-11 15:21:10','2022-01-12 15:21:10'),('64cb61b29160478426ad101328bfb44f0dc512dc7cadb21d3cb6575f4b975d5c49e9f0125fa1fcb2',11,12,'Personal Access Token','[]',0,'2022-01-11 15:45:05','2022-01-11 15:45:05','2022-01-12 15:45:05'),('671906ae2379f45b439b12c865ea1bee3f87095c1f26cf37959415f001f16e97ed2d502e32775b1c',11,12,'Personal Access Token','[]',0,'2022-01-11 15:46:48','2022-01-11 15:46:48','2022-01-12 15:46:48'),('67cff01d37e22f5cc253246c1d44d89a822b70189c16db8f6b028c771489c67f7e65c6da075d4ef8',6,12,'Personal Access Token','[]',0,'2022-01-10 15:32:12','2022-01-10 15:32:12','2022-01-11 15:32:12'),('67fa8558be4268c257a0f1a45269d05cf68415617029db3ee6f4d6dc0f35ff12625d77f2bc4d7329',6,12,'Personal Access Token','[]',0,'2022-01-11 17:10:47','2022-01-11 17:10:47','2022-01-12 17:10:47'),('685fd9d092260787b46671f1f7999f9de2df2c60633d90327008906e1ed8acd1e8cc9a32c9e25774',6,12,'Personal Access Token','[]',0,'2022-01-11 17:28:02','2022-01-11 17:28:02','2022-01-12 17:28:02'),('6acde917d96023bdadef2f7d93f1da7e5b05f56c6301069128948501c0e0ac5db91d0ba88c2f83b8',42,12,'Personal Access Token','[]',0,'2022-02-09 21:17:07','2022-02-09 21:17:07','2022-02-10 21:17:07'),('6c9ba85b2e21b5d23b7a7eda0c4b64e17c2d4758acf59f515c5fdae5ca1e178ff05ab02fd90aae8c',39,12,'Personal Access Token','[]',0,'2022-02-01 21:24:18','2022-02-01 21:24:18','2022-02-02 21:24:18'),('6cd84f5092a5608ce8c6994610c267c5887976ed0b494c90da7fcb930043529ec59520b5046f8198',28,12,'Personal Access Token','[]',0,'2022-01-27 21:36:46','2022-01-27 21:36:46','2022-01-28 21:36:46'),('6eb1a6824de5f826921c41c03c1f509afcab8c6392790ede9bc3e5a9d1d779ff014089e5111b6b3e',33,12,'Personal Access Token','[]',0,'2022-01-30 11:16:36','2022-01-30 11:16:36','2022-01-31 11:16:36'),('71f21bc85ced88f5777a8e98e085d888ae1bbf30015fe07a34fb70b9b6f2a7bd037a14e851cc68e4',15,12,'Personal Access Token','[]',0,'2022-01-25 15:03:05','2022-01-25 15:03:05','2022-01-26 15:03:05'),('72780b2dcee1833e5ddec5fa98668db2a19b4f98257967bff1e9d166b20c081421a7d46053e52bd8',31,12,'Personal Access Token','[]',0,'2022-01-29 13:57:39','2022-01-29 13:57:39','2022-01-30 13:57:39'),('72b29c937dfea81d80348e628cef08ffdf7e923e5f17e3ea41c9d367264191a5128590493700ee9a',6,12,'Personal Access Token','[]',0,'2022-01-11 17:24:49','2022-01-11 17:24:49','2022-01-12 17:24:49'),('759acad00c18b5478dd8e00667d98ecd09f465927b8303ec78ec74e9eb53bc737321d6cc82a60147',35,12,'Personal Access Token','[]',0,'2022-01-30 11:28:55','2022-01-30 11:28:55','2022-01-31 11:28:55'),('7855a86754b6691f37653ff65a6aa0f98dd3c371de7b142e361e588a191ca702d95db6492aea16d8',13,12,'Personal Access Token','[]',0,'2022-01-29 21:06:49','2022-01-29 21:06:49','2022-01-30 21:06:49'),('7a544f5cd2ea200657fddd248ad181342066781ceb4489341f532af8db640c33d141024152829983',6,12,'Personal Access Token','[]',0,'2022-01-11 17:23:33','2022-01-11 17:23:33','2022-01-12 17:23:33'),('7f6bdd9f4b5874dc30956b06968ffea7d06b00681c402212c2dedd79ec0c40bce8597c493c6e5255',2,2,NULL,'[]',0,'2022-01-03 08:51:53','2022-01-03 08:51:53','2023-01-03 10:51:53'),('7fb7a3aca2df1253b1e32663101e9b9e0264e5779f5c67839a71c143989af2fe286b224f582ae9b2',2,2,NULL,'[]',0,'2022-01-02 13:47:58','2022-01-02 13:47:58','2023-01-02 15:47:58'),('84f43d3a9915ae54700176802319587a57a9ab349b6f8e3b58001975b913a657a5f58d8d62b2686d',11,12,'Personal Access Token','[]',0,'2022-01-11 15:07:17','2022-01-11 15:07:17','2022-01-12 15:07:17'),('87c8c713c4484125ad93ecc6adc7a58f9b6be760346f033cd710fcafbe93bc97e76bc216b54b7421',6,12,'Personal Access Token','[]',0,'2022-01-11 17:22:20','2022-01-11 17:22:20','2022-01-12 17:22:20'),('8945f5be52fff6b4befbde940a90ce04102df28c76bba9607f8383363ade662293e2cd358c78d48d',6,12,'Personal Access Token','[]',0,'2022-01-11 17:20:06','2022-01-11 17:20:06','2022-01-12 17:20:06'),('8bf6ca1dda1dd2cca7a003d15469e36e508a504577e1f7723199d065ad7ef14b41bb6472dadb3333',43,12,'Personal Access Token','[]',0,'2022-02-10 10:51:30','2022-02-10 10:51:30','2022-02-11 10:51:30'),('8c672afb7ffea29eebbd93f259ee86caf9e6cda8061bdf717499bdf5bca4d7bbbf6fce3120df3ff2',11,12,'Personal Access Token','[]',0,'2022-01-11 15:46:07','2022-01-11 15:46:07','2022-01-12 15:46:07'),('8e942cd63b56da1d661a5faa241bd5f7617437c8ded15e789e2830de0ec08cf82fcb92d9be8ad113',13,12,'Personal Access Token','[]',0,'2022-01-29 12:31:05','2022-01-29 12:31:05','2022-01-30 12:31:05'),('8f59159b8a8c3db285f88ee5106813acc434da8c284d262c2fb74a0b6bd791c330cad2070b8d800e',6,12,'Personal Access Token','[]',0,'2022-01-31 17:14:56','2022-01-31 17:14:56','2022-02-01 17:14:56'),('912d796f8be3413fe97ca9c35569fbf58e3e7101345fa8a729323e156ded5414edc8d604744f8ab8',34,12,'Personal Access Token','[]',0,'2022-01-30 11:25:14','2022-01-30 11:25:14','2022-01-31 11:25:14'),('981e1610a7c21ea4085acabab85c1926589edd5aa4763b60fdddff391d429b68716640905e47a7f7',6,12,'Personal Access Token','[]',0,'2022-01-11 11:47:39','2022-01-11 11:47:39','2022-01-12 11:47:39'),('9a1476a45c352747f25a7fd0a6012a95fceba162609ee5d8a4d5a48a36b437c53f355eb87ff31317',6,12,'Personal Access Token','[]',0,'2022-01-11 16:42:41','2022-01-11 16:42:41','2022-01-12 16:42:41'),('9a437bab98c997c85760f9f6397056e7bb6da4c0f40907644f36cdeefc1d1bec251f289bbdf694b1',6,12,'Personal Access Token','[]',0,'2022-01-11 17:21:26','2022-01-11 17:21:26','2022-01-12 17:21:26'),('9ac7c6b916e1073cb0040abcda99a9d043de7df779deae1388aa0b11c77fa2fe4d3ddccfbd74c4ab',2,6,NULL,'[]',0,'2022-01-02 13:13:04','2022-01-02 13:13:04','2023-01-02 15:13:04'),('9b9be89d623c13db5ba5458e10ab791b3f1f7816ef3edc28e5fedb91564e0230f51c3e7fd7286886',6,12,'Personal Access Token','[]',0,'2022-01-11 17:25:35','2022-01-11 17:25:35','2022-01-12 17:25:35'),('9ba8a49d52bb465e3002a7df58cd630b13ae36cf079c37dcb526227ec8f5dcb29a8ff434be8d90be',14,12,'Personal Access Token','[]',0,'2022-01-26 13:24:20','2022-01-26 13:24:20','2022-01-27 13:24:20'),('9c3a1d41fb76309ef5fda83276340188a5901c2254bbbb973e4ceabddb9edb61503139882d7dbec6',11,12,'Personal Access Token','[]',0,'2022-01-11 15:18:34','2022-01-11 15:18:34','2022-01-12 15:18:34'),('9c41279357f0527610b9f70fd7b8916ba82406e1f198670f4c91a73550bc3d85363f898a2bc14f98',6,12,'Personal Access Token','[]',0,'2022-01-09 18:05:40','2022-01-09 18:05:40','2022-01-10 18:05:40'),('9c61e7b683b0ba206447e54f948f7a90bb8b49c8d7cbd598b516fbbf08fbe2856ab4ba1c2d0b648e',11,12,'Personal Access Token','[]',0,'2022-01-11 15:18:27','2022-01-11 15:18:27','2022-01-12 15:18:27'),('9e4e698d8724ad15748d7da16a785d371351ec5bb1dfb1680754f69615da430a156cddb244347aab',14,12,'Personal Access Token','[]',0,'2022-01-26 13:24:18','2022-01-26 13:24:18','2022-01-27 13:24:18'),('a0365a0fbdcd527833e3816d0a716f26a7613d9f85f627a40cab42b22fc6c0e53651124452c36c70',30,12,'Personal Access Token','[]',0,'2022-01-29 09:54:54','2022-01-29 09:54:54','2022-01-30 09:54:54'),('a0413ba8c7687d29d09b5e9434e7fe207ddfaf8bad99d2c878d93da95e2eb5dfe0b83b49bef0b875',24,12,'Personal Access Token','[]',0,'2022-01-27 21:29:39','2022-01-27 21:29:39','2022-01-28 21:29:39'),('a23949a9143f6eb78af29abae0fce530d1ffef7ffbea48251efd13fe4990edd09bf6c5538e8ca9f2',6,12,'Personal Access Token','[]',0,'2022-01-11 17:17:27','2022-01-11 17:17:27','2022-01-12 17:17:27'),('a30b1f64dcdc9d459638537af1b009f44cceb5be9c8d30374313d130c7662283ee33bcf2b68d056e',13,12,'Personal Access Token','[]',0,'2022-01-29 18:00:40','2022-01-29 18:00:40','2022-01-30 18:00:40'),('a3fdbc1a6c13b171b04ca168777732636eeeb9ce5d8c795e768741fff69ee3ced66807c3f3661243',11,12,'Personal Access Token','[]',0,'2022-01-11 13:41:21','2022-01-11 13:41:21','2022-01-12 13:41:21'),('a519992eda8eb024d50e48c5fa0cd3d186791d0db4d847d653daf6a1f50193b1bcefd3c6bff17738',11,12,'Personal Access Token','[]',0,'2022-01-11 15:14:25','2022-01-11 15:14:25','2022-01-12 15:14:25'),('a5b200e528c7d1b1a3718af19de4685b0a48daee1e8fa96729b3461b7f9ec7551c0f20ecb03367dc',6,12,'Personal Access Token','[]',0,'2022-01-09 18:05:31','2022-01-09 18:05:31','2022-01-10 18:05:31'),('aa3747a732a193160bb040b5460a88f7d6a143ecb376a0e999a0ff44af5490b6fb4197fc5a829d08',1,2,NULL,'[]',0,'2022-01-02 11:35:21','2022-01-02 11:35:21','2023-01-02 13:35:21'),('aa88d6c4c722f2a5585ed4f7caf7e6ce73f04e876515b6d5441f7a3b33442cc12829d6a7390aba99',6,12,'Personal Access Token','[]',0,'2022-01-11 17:23:50','2022-01-11 17:23:50','2022-01-12 17:23:50'),('ac1adc2b75619741eebeb051296395a8bfb7ab3748e3d78e405595c30338558c6ae4a49a8e59b874',12,12,'Personal Access Token','[]',0,'2022-01-11 17:51:59','2022-01-11 17:51:59','2022-01-12 17:51:59'),('b00765d5c1ecbe62b7ae121ddbb7275a001cea267e1e3dad069d7830c84e12e5815a8c9c485c4753',6,12,'Personal Access Token','[]',0,'2022-01-11 16:59:30','2022-01-11 16:59:30','2022-01-12 16:59:30'),('b188d6f559750f2f1f4c1062c7d1e5fe8c80854debd95f9a3783ade104e753070d394f0089b496ea',6,12,'Personal Access Token','[]',0,'2022-01-27 21:04:15','2022-01-27 21:04:15','2022-01-28 21:04:15'),('b38e363afc5bbb4b90c7ed811884141f7cc9227e516983c41cfde83c717061bfbc105adfa6c525eb',2,9,NULL,'[]',1,'2022-01-05 14:36:38','2022-01-05 14:36:38','2023-01-05 14:36:38'),('b51d54e76b288678b4194a900bfba546f81493877bf783770abdad015b211743b17f2d84800d9c34',2,9,NULL,'[]',0,'2022-01-05 14:41:09','2022-01-05 14:41:09','2023-01-05 14:41:09'),('b75a54a0e2fe56e12ba9138a29d0c08dd051239702f7c91bd730da4196160824ed462f93d6f4ea84',2,2,NULL,'[]',0,'2022-01-02 13:39:46','2022-01-02 13:39:46','2023-01-02 15:39:46'),('b7cfafef2e81b793443c4755e58a5504552960a6bdbb0dcd3c29bc67cfeacbdb422309b0c0a869b1',30,12,'Personal Access Token','[]',0,'2022-01-29 09:53:55','2022-01-29 09:53:55','2022-01-30 09:53:55'),('b892baeb6370f38a26ccdd14da13748354f266443f7214a3982e1c79f7d56b8a501f9a5362b433fd',29,12,'Personal Access Token','[]',0,'2022-01-28 14:34:44','2022-01-28 14:34:44','2022-01-29 14:34:44'),('bc626bb230690c9f236bc1dd1aedd04fe53a409b3a556dc00de35ec45007ddaece2744cd72702101',2,9,NULL,'[]',0,'2022-01-05 14:11:24','2022-01-05 14:11:24','2023-01-05 14:11:24'),('be281ea94768b63976a6a7a0ee9e869f0a1a27573d7cd2df4d0115a16ef6f490dcdd49580589032c',11,12,'Personal Access Token','[]',0,'2022-01-11 15:18:14','2022-01-11 15:18:14','2022-01-12 15:18:14'),('bf1efbc6d3a2073953859ca0c2206b03d88a0d2958d4721ffb9636ca2a687526c529eb25d8355582',2,2,NULL,'[]',0,'2022-01-03 11:53:47','2022-01-03 11:53:47','2023-01-03 13:53:47'),('bf3248b5d80b315ab3208cb1ad2885d39114cfd26e118757b50e3c885dbf34ec8227ee76c1f636d0',11,12,'Personal Access Token','[]',0,'2022-01-11 13:45:09','2022-01-11 13:45:09','2022-01-12 13:45:09'),('c36857c2e62d4e403f1df23c6cc1aa18ae7288a2d94ef7d034d700fc357d4bdfdbdd920806f7ac16',6,12,'Personal Access Token','[]',0,'2022-01-11 13:37:51','2022-01-11 13:37:51','2022-01-12 13:37:51'),('c3c52056ecf7fa2621b197aa3eb49b9481b734b0013f2030d44da9cd5d1ba5c9457f6f2d6da680e8',39,12,'Personal Access Token','[]',0,'2022-02-01 21:31:50','2022-02-01 21:31:50','2022-02-02 21:31:50'),('c5c47b690cf6c3c8b4017f1baca627ff5dbbb2db120a36865e851272be9eee6af915a63870f77b19',13,12,'Personal Access Token','[]',0,'2022-02-02 08:26:10','2022-02-02 08:26:10','2022-02-03 08:26:10'),('cbce6de2dc2df5e81663889bb2c4b0d8795db5703c0048eed3e5111aa29576e8f5f039702629673e',6,12,'Personal Access Token','[]',0,'2022-01-11 15:47:23','2022-01-11 15:47:23','2022-01-12 15:47:23'),('cc2f21651e536329c51c0b9cf3ec5aee6ca16e2e5a970825b30647c39cf7fed648c096dd3f38890e',14,12,'Personal Access Token','[]',0,'2022-01-26 13:24:20','2022-01-26 13:24:20','2022-01-27 13:24:20'),('cee353d82457de3f9c359367a478dfa058d6f84d988c9b5207c294a44924ebb08cb6e70ca4c97126',2,9,NULL,'[]',0,'2022-01-05 14:25:36','2022-01-05 14:25:36','2023-01-05 14:25:36'),('d1019ac12d24a28f7da9446c162d78e0cf84e75551ef0edcfdfa561cf4232f063f83c05290ea3b97',30,12,'Personal Access Token','[]',0,'2022-01-29 09:54:55','2022-01-29 09:54:55','2022-01-30 09:54:55'),('d2386968ff3c35334042a37acbe84571db6f01d23ca9904bd48e91d0ff11f1e489080a4cb6baf84c',6,12,'Personal Access Token','[]',0,'2022-01-31 17:19:57','2022-01-31 17:19:57','2022-02-01 17:19:57'),('d2abbf20e3a6218ffc61909f81287490d2afa7da1c0a44907162fec67938cf67d5d6562678590ff0',27,12,'Personal Access Token','[]',0,'2022-01-27 21:35:06','2022-01-27 21:35:06','2022-01-28 21:35:06'),('d36aa9bc818388aca27292fa135f591b8d34b9df2e3c69abbc2870868fb38db5a949bcd05043c264',2,2,NULL,'[]',0,'2022-01-02 13:06:57','2022-01-02 13:06:57','2023-01-02 15:06:57'),('d3796e9e5007f10d3f619a21f337df9bd4fd80941cad5ab923af0343f6dc5045866c6b052b0f56f3',11,12,'Personal Access Token','[]',0,'2022-01-11 15:46:51','2022-01-11 15:46:51','2022-01-12 15:46:51'),('d653eaacf913604581083af7627080298762245208f277c31535e68b95e15e5bb3d790938f9c9fa1',6,12,'Personal Access Token','[]',0,'2022-01-11 13:36:41','2022-01-11 13:36:41','2022-01-12 13:36:41'),('d7a208fd1929af2d596eadd2ad36f5a07a374682098b0938a52b66a02af60c28ebf129ae9f9eac28',1,2,NULL,'[]',0,'2022-01-02 11:25:02','2022-01-02 11:25:02','2023-01-02 13:25:02'),('d7de950eb4903b1dd09c92ffe60c025f177c7848f36fa134f6bd860062cd9d1f2840770205848f53',1,2,NULL,'[]',0,'2022-01-02 11:25:00','2022-01-02 11:25:00','2023-01-02 13:25:00'),('dc8bb499f272fddd1af6bdf07b7ccc3d56493d380e737ddafb680fc7c8bee77c383f2540b14f5050',30,12,'Personal Access Token','[]',0,'2022-01-29 09:51:58','2022-01-29 09:51:58','2022-01-30 09:51:58'),('dd33e5d3d982ae9bb41a4eea8a748469012d47629d564ea60f764461cb317338e3a9d8224e41e607',2,9,NULL,'[]',0,'2022-01-04 11:07:57','2022-01-04 11:07:57','2023-01-04 11:07:57'),('ddf931610eabb66b640281d686e9291725f708664fe35862a55872ac428d1e139b45ab86c24e2ee6',11,12,'Personal Access Token','[]',0,'2022-01-11 15:46:49','2022-01-11 15:46:49','2022-01-12 15:46:49'),('dfd18bb06f2d17191b7608838941f9b901e4ae0a5d16b144711694ac4dce22b6ca42636ae844dcbb',6,12,'Personal Access Token','[]',0,'2022-01-11 13:37:44','2022-01-11 13:37:44','2022-01-12 13:37:44'),('e08f64a84b0351c980c6549eb401f07cf2162ec9dc7ec0bbb7ba61d15ee8096db174fefc193b821d',6,12,'Personal Access Token','[]',0,'2022-01-11 17:29:06','2022-01-11 17:29:06','2022-01-12 17:29:06'),('e3d75f69adab14251593f1ec8d349ca5b934e7b8b9efa7750b9eeec7b628d4c00272c6224ff675d8',11,12,'Personal Access Token','[]',0,'2022-01-11 15:46:50','2022-01-11 15:46:50','2022-01-12 15:46:50'),('e77a15716af6fc3dc1dd145bf2ba63de9577d960df588110182c545ac52856f86019e224534d96aa',30,12,'Personal Access Token','[]',0,'2022-01-29 09:53:58','2022-01-29 09:53:58','2022-01-30 09:53:58'),('e9f93b4be9a838bf146a5360f78a6a79dbaf3203c03a6c2588ec884768a50257ac5d8aa381f587dc',6,12,'Personal Access Token','[]',0,'2022-01-11 17:43:10','2022-01-11 17:43:10','2022-01-12 17:43:10'),('f0391086328781906014f87de7996e2790013cbd549dc80138d37ffe65159b3e97338e69a4a5430d',13,12,'Personal Access Token','[]',0,'2022-02-03 15:34:12','2022-02-03 15:34:12','2022-02-04 15:34:12'),('f2c45e41504b2a4d7d98600c6f24136b5c04051f79bba4fd9e62c6650b1ef93695ad03d48ff804bf',14,12,'Personal Access Token','[]',0,'2022-01-26 13:24:19','2022-01-26 13:24:19','2022-01-27 13:24:19'),('f2db55c0e968a4beafc1b9c4b24186a4b0f4fd896cc77f49c2804efd9d8a3d1ca8be6e611e20a20a',6,12,'Personal Access Token','[]',0,'2022-01-11 17:23:10','2022-01-11 17:23:10','2022-01-12 17:23:10'),('f4e7dff4a8cf67cf4d131597d24968abac40559f65e146f5c36e2c39c3f5d3bfa0bd1fae65a8fa5f',6,12,'Personal Access Token','[]',0,'2022-01-11 17:15:24','2022-01-11 17:15:24','2022-01-12 17:15:24'),('f8d1cb336b3d750883cfe519a4f4822c2c7a7ba2da6132c91ae36a819bc9d019411dac3da85200dd',30,12,'Personal Access Token','[]',0,'2022-01-29 09:52:59','2022-01-29 09:52:59','2022-01-30 09:52:59'),('f8d2d4fe9d06a6b750deb915808b066054997785812bdc3d6d84b04d566d6d146df73404e6be981e',6,12,'Personal Access Token','[]',0,'2022-01-11 17:21:47','2022-01-11 17:21:47','2022-01-12 17:21:47'),('f901d3220ef6cf1287f86ab8ba1943460c69ace66968fb91d73de54275e3a21c18f48f541814aa8a',14,12,'Personal Access Token','[]',0,'2022-01-26 13:24:18','2022-01-26 13:24:18','2022-01-27 13:24:18'),('fbf3709dfb7c7b198524c81cf27b2240946175a3d05d8bd467e5107ca71bbafc14e78bafab7ab3ba',6,12,'Personal Access Token','[]',0,'2022-01-11 17:33:35','2022-01-11 17:33:35','2022-01-12 17:33:35'),('fcb3ef80619eedf99103607b90646896e56ea5925f64b6b4d3736e7a3abab136144ec5784606d991',37,12,'Personal Access Token','[]',0,'2022-01-31 17:31:27','2022-01-31 17:31:27','2022-02-01 17:31:27'),('fd24a3ad1b67c0ab526ba6247fc0e6383d0c3243cc4078aa01dfd60e07da2f9660497b58e7ce556a',6,12,'Personal Access Token','[]',0,'2022-01-11 17:28:05','2022-01-11 17:28:05','2022-01-12 17:28:06'),('fea33271a3d3ce7e4b900181df101c403c150a1e582e54e8bc20aedce6e909f3040abb6ca48ecde7',6,12,'Personal Access Token','[]',0,'2022-01-09 18:12:03','2022-01-09 18:12:03','2022-01-10 18:12:03'),('feb1ceebb4669d3173e8f9509457f3f9cc8e87bad96e52af96e22fa610ca2df13ca503624871bed1',11,12,'Personal Access Token','[]',0,'2022-01-11 15:46:50','2022-01-11 15:46:50','2022-01-12 15:46:50');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','EtEm3c5CziLCVDfOmVkoA4cUeZasU2cBY5D5qXMF',NULL,'http://localhost',1,0,0,'2022-01-02 09:52:24','2022-01-02 09:52:24'),(2,NULL,'Laravel Password Grant Client','A6ZoEa6Mz9Y7S52Xr3CHMpuDlRbNteBl6LcrlXRZ','users','http://localhost',0,1,0,'2022-01-02 09:52:24','2022-01-02 09:52:24'),(3,NULL,'Laravel Personal Access Client','2tyGCjmsJ6GhqdEQFOiszaVxohY908mxpfZ6Qse2',NULL,'http://localhost',1,0,0,'2022-01-02 13:11:18','2022-01-02 13:11:18'),(4,NULL,'Laravel Password Grant Client','8fFfSgMK24VhriCoBHTZQDC3d7X8eMn675pwFHKF','users','http://localhost',0,1,0,'2022-01-02 13:11:18','2022-01-02 13:11:18'),(5,NULL,'Laravel Personal Access Client','fU6BCNVSEPsY5RUlWlK7OMbyJlAT9qOSn5sT00U2',NULL,'http://localhost',1,0,0,'2022-01-02 13:11:26','2022-01-02 13:11:26'),(6,NULL,'Laravel Password Grant Client','J5HjRtCDjxFhEEsuPMDoP9Rgzy1eVGKtYQpKmQsn','users','http://localhost',0,1,0,'2022-01-02 13:11:26','2022-01-02 13:11:26'),(7,2,'mrm','GYDWOuYNPRLbmyjtP0gGYCqQIMPxxFnYixFGMa2g',NULL,'http://localhost/auth/callback',0,0,0,'2022-01-02 13:16:14','2022-01-02 13:16:14'),(8,NULL,'Laravel Personal Access Client','Dos55lJpDHrI0DHUTpHWY1z1jqcEIEqlxuQ6ZT9k',NULL,'http://localhost',1,0,0,'2022-01-03 17:30:07','2022-01-03 17:30:07'),(9,NULL,'Laravel Password Grant Client','tNu3h6ax4EOYzsiPoDP0MffqvzM3Q8JEtqPQIYCc','users','http://localhost',0,1,0,'2022-01-03 17:30:07','2022-01-03 17:30:07'),(10,NULL,'Laravel Personal Access Client','Ei18hI01xBI4et7iQlIFGFFTUITDkz5zO5BLoEdA',NULL,'http://localhost',1,0,0,'2022-01-03 17:33:11','2022-01-03 17:33:11'),(11,NULL,'Laravel Password Grant Client','c92GNCCOjvn53LSQRT0SVOb1jKNWZSVSpSuIDLzD','users','http://localhost',0,1,0,'2022-01-03 17:33:11','2022-01-03 17:33:11'),(12,NULL,'Laravel Personal Access Client','h5LPvEAcced1Kut6Nk9qsd9auMQeZW6GKkKuSFwo',NULL,'http://localhost',1,0,0,'2022-01-03 17:33:16','2022-01-03 17:33:16'),(13,NULL,'Laravel Password Grant Client','PfeqDFuHLtt7SUZmaoFdwp5X7MQohJu0g2qoZH3w','users','http://localhost',0,1,0,'2022-01-03 17:33:16','2022-01-03 17:33:16');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2022-01-02 09:52:24','2022-01-02 09:52:24'),(2,3,'2022-01-02 13:11:18','2022-01-02 13:11:18'),(3,5,'2022-01-02 13:11:26','2022-01-02 13:11:26'),(4,8,'2022-01-03 17:30:07','2022-01-03 17:30:07'),(5,10,'2022-01-03 17:33:11','2022-01-03 17:33:11'),(6,12,'2022-01-03 17:33:16','2022-01-03 17:33:16');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `oauth_refresh_tokens` VALUES ('0492827da12174a0616abd39b87cadda42a5b21f7843e1b8b5272ec658092655064832e557bd9716','0c02d59a86ca22a6d96e1feb5751602f0ba3a0d3ef80ea74f1f3631917356faed1047494ebaef908',0,'2023-01-02 15:48:02'),('0e023f4857382508e7cbd0162bc9d51696275529bb4ebdb8a5a5b15ec38c59e66f57893fd9532f60','3516c7612c4075713f477274feffaa3ce9e95cd0b777e47e3175c45bfb48d5965d3f0e45a6033eec',0,'2023-01-02 15:12:36'),('401df0b06e9028ba8ef2953c1612233401e12168802943c9f8c088ceb921f85fbf7ead2bf238e2e8','085124bdfee9ac82429d8936ee637814c263ecf658f261fcd8edfa1d24d491049a2fb1ff45626c28',0,'2023-01-02 13:24:37'),('4a12605df48d91f5fc659657599cbdaba3a14858216029e8a5d6dc7022280b13114b1a566da16318','bc626bb230690c9f236bc1dd1aedd04fe53a409b3a556dc00de35ec45007ddaece2744cd72702101',0,'2023-01-05 14:11:24'),('4a44009f5af64585002547d8c530fc9cf5d66747471944aa5b28f4bf33552b6fc50d3aa9de2d0379','dd33e5d3d982ae9bb41a4eea8a748469012d47629d564ea60f764461cb317338e3a9d8224e41e607',0,'2023-01-04 11:07:57'),('4b3adeb995a571841b91e714fac62f3c76fd441d5ccdaf635e5181eb05e0953bca498d206d6a3588','9ac7c6b916e1073cb0040abcda99a9d043de7df779deae1388aa0b11c77fa2fe4d3ddccfbd74c4ab',0,'2023-01-02 15:13:04'),('6a7c2a2eba5988ba33f5f876374dc406c3ac4c45d2b7d52034042e1a2618573aacf97060d6a25f47','b51d54e76b288678b4194a900bfba546f81493877bf783770abdad015b211743b17f2d84800d9c34',0,'2023-01-05 14:41:09'),('72228cf18171f88019609003793bce91a6e7670f246fd17df064e81665f17dc19f1c5c60ff79dd60','7f6bdd9f4b5874dc30956b06968ffea7d06b00681c402212c2dedd79ec0c40bce8597c493c6e5255',0,'2023-01-03 10:51:53'),('7ad79940196e19a5d23b6a33da7d638d0652cb3b5081a644dc258faac1494addd683973674276cb3','0855426c5cbc013ad6342f76ebb42c4c561f389ce214d2eb12029d4ba444a3e0af8e7212372559b8',0,'2023-01-04 11:02:02'),('8a53db39efa2af1d44a1d91efcad9c6d0a19f837a5626ace7b52cbbab370956c7bfb14eae655ade9','d7de950eb4903b1dd09c92ffe60c025f177c7848f36fa134f6bd860062cd9d1f2840770205848f53',0,'2023-01-02 13:25:00'),('8e9cb53b30b4a3264d695972f72765e20fe0e9f90b70e725ba9417703cb94565f76b37b5f33ad229','364d723bda14b2cc0276e7d99be6c4f7fcc3126adaafb4c44df10dccd47a60e2000b5d991c705348',0,'2023-01-02 15:21:02'),('8fb4709f78717577443da0f001497ef4aa7c0b2606e3233eb54321810e9ff363a4b5b5a51c686a32','7fb7a3aca2df1253b1e32663101e9b9e0264e5779f5c67839a71c143989af2fe286b224f582ae9b2',0,'2023-01-02 15:47:58'),('98298dee4df657ffc7ab9a842020ecc4b735ba6228e21a8c15c05de579b2b2a84f84b3df0b55365a','b75a54a0e2fe56e12ba9138a29d0c08dd051239702f7c91bd730da4196160824ed462f93d6f4ea84',0,'2023-01-02 15:39:46'),('a8a09e4e562ed1b18db196f35b4a84671fa65f3e59923d918d387283d0543a7955e72c3a92239df1','0b2af99ba809751fdbd903b4829e3a9176f771bf9a6212ca73b7d19e0e7720c8a368f0b9ce4fd777',0,'2023-01-09 11:27:33'),('b3937dfd3f7ac9636512b70f5389abc28fa7e49e132a9e7b982f7473ad5c8e06414839383821f316','d36aa9bc818388aca27292fa135f591b8d34b9df2e3c69abbc2870868fb38db5a949bcd05043c264',0,'2023-01-02 15:06:57'),('b6067964cc3c6a1ccabd9484d0963c5f7f8f6775a733b3753e575ae9f523671c6cc72ae7c8c3702c','cee353d82457de3f9c359367a478dfa058d6f84d988c9b5207c294a44924ebb08cb6e70ca4c97126',0,'2023-01-05 14:25:36'),('b678d33315eeb2319bfebb99e280f80289c951051d9d0e5b52e62a5973b9cfb2d0900219e74e1a56','d7a208fd1929af2d596eadd2ad36f5a07a374682098b0938a52b66a02af60c28ebf129ae9f9eac28',0,'2023-01-02 13:25:02'),('dec284f15cb75df679c0eabec7f9c66920509bdf62d5ce11ec644a141ded4bc00f32ca6ea9ae824d','b38e363afc5bbb4b90c7ed811884141f7cc9227e516983c41cfde83c717061bfbc105adfa6c525eb',0,'2023-01-05 14:36:38'),('ee3eb4dc11693d384031de2cb34d096553222b666e21ad000bf0be905577d61e99ecb1eb1f529204','aa3747a732a193160bb040b5460a88f7d6a143ecb376a0e999a0ff44af5490b6fb4197fc5a829d08',0,'2023-01-02 13:35:22'),('f7143645e7ac3d3fa11df683932b930531e180508d64b8a5198afa4d43bbbbd38f8cb174f61620ea','bf1efbc6d3a2073953859ca0c2206b03d88a0d2958d4721ffb9636ca2a687526c529eb25d8355582',0,'2023-01-03 13:53:47'),('fb9c31180dc7d050ea29cf710a622995b0dd2f91a9506bd910f3595aa9bafdfc3f609b38892d76d3','003629ebca3a126ea69e040d2aee4274afd218432169d7e5f814dc0ec45c940fd6316c6fb400a885',0,'2023-01-03 14:20:04'),('fef43f174617877b24e2fc874e66ebbb9f7e51eb86a58af060c9e64e4132125e6fefd54cbef11a9a','311278d2e7c66e35b700c45e522ec467314968997edbf71841102ef5c0a28445f24d3c1c78f4b76f',0,'2023-01-02 15:42:46');
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
-- Table structure for table `protfolio_service`
--

DROP TABLE IF EXISTS `protfolio_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `protfolio_service` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int NOT NULL,
  `link` varchar(250) DEFAULT NULL,
  `path` varchar(250) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `sort` int NOT NULL DEFAULT '100',
  `category` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `protfolio_service_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `protfolio_service`
--

LOCK TABLES `protfolio_service` WRITE;
/*!40000 ALTER TABLE `protfolio_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `protfolio_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `doctor_id` bigint unsigned DEFAULT NULL,
  `nurse_id` bigint unsigned DEFAULT NULL,
  `fullname` varchar(250) DEFAULT NULL,
  `name_caregiver` varchar(250) DEFAULT NULL,
  `gender` int DEFAULT NULL,
  `location` varchar(250) DEFAULT NULL,
  `governorate_id` varchar(2) DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  `adress` varchar(250) DEFAULT NULL,
  `land_mark` varchar(250) DEFAULT NULL,
  `floor` varchar(250) DEFAULT NULL,
  `apartment` varchar(250) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `phone2` varchar(250) DEFAULT NULL,
  `whatapp` int NOT NULL DEFAULT '0',
  `whatapp2` int NOT NULL DEFAULT '0',
  `whatsApp_group` varchar(250) DEFAULT NULL,
  `age` varchar(20) DEFAULT NULL,
  `referral` varchar(250) DEFAULT NULL,
  `corporate` varchar(250) DEFAULT NULL,
  `physician` varchar(250) DEFAULT NULL,
  `type` int DEFAULT NULL,
  `covid19` int DEFAULT '0',
  `specialty_id` int DEFAULT NULL,
  `service_id` int DEFAULT NULL,
  `package_id` int DEFAULT NULL,
  `visit_time_day` date DEFAULT NULL,
  `visit_time_from` time DEFAULT NULL,
  `visit_time_to` time DEFAULT NULL,
  `expectation_cost` int DEFAULT '0',
  `real_cost` int DEFAULT '0',
  `bill_serial` varchar(250) DEFAULT NULL,
  `pay_or_not` int DEFAULT '0',
  `code_zone_patient_id` varchar(250) DEFAULT NULL,
  `bed_number` varchar(250) DEFAULT NULL,
  `symptoms` varchar(250) DEFAULT NULL,
  `doc_note` varchar(250) DEFAULT NULL,
  `Feedback` varchar(250) DEFAULT NULL,
  `doc_rate` int DEFAULT NULL,
  `user_rate` int DEFAULT NULL,
  `opd_admin_id` int DEFAULT NULL,
  `cc_admin_id` int DEFAULT NULL,
  `admin_id_in_out` int DEFAULT NULL,
  `redirect_to_admin_id` int DEFAULT NULL,
  `status_doc` int DEFAULT NULL,
  `status_user` int DEFAULT NULL,
  `status_cc` int DEFAULT '1',
  `status_in_out` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `nurse_id` (`nurse_id`),
  KEY `user_id` (`user_id`),
  KEY `service_id` (`service_id`),
  KEY `specialty_id` (`specialty_id`),
  KEY `opd_admin_id` (`opd_admin_id`),
  KEY `cc_admin_id` (`cc_admin_id`),
  KEY `admin_id_in_out` (`admin_id_in_out`),
  KEY `redirect_to_admin_id` (`redirect_to_admin_id`),
  CONSTRAINT `request_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  CONSTRAINT `request_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `users` (`id`),
  CONSTRAINT `request_ibfk_21` FOREIGN KEY (`nurse_id`) REFERENCES `users` (`id`),
  CONSTRAINT `request_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `request_ibfk_4` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`),
  CONSTRAINT `request_ibfk_5` FOREIGN KEY (`specialty_id`) REFERENCES `specialty` (`id`),
  CONSTRAINT `request_ibfk_7` FOREIGN KEY (`cc_admin_id`) REFERENCES `admin` (`id`),
  CONSTRAINT `request_ibfk_71` FOREIGN KEY (`opd_admin_id`) REFERENCES `admin` (`id`),
  CONSTRAINT `request_ibfk_72` FOREIGN KEY (`admin_id_in_out`) REFERENCES `admin` (`id`),
  CONSTRAINT `request_ibfk_8` FOREIGN KEY (`redirect_to_admin_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
INSERT INTO `request` VALUES (0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(25,NULL,NULL,NULL,'عبد المحسن',NULL,1,NULL,'1',126,'qqqqqqqqqqqqq',NULL,NULL,NULL,'12',NULL,1,0,NULL,'1',NULL,NULL,NULL,2,0,6,27,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,1,NULL,NULL,NULL,4,2,'2022-02-05 19:36:13','2022-02-08 11:44:39'),(26,NULL,NULL,NULL,'ayman',NULL,1,NULL,NULL,NULL,'fdslakj',NULL,NULL,NULL,'01097540411',NULL,0,0,NULL,NULL,NULL,NULL,NULL,2,0,NULL,30,NULL,NULL,NULL,NULL,1233,12334,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,4,1,'2022-02-06 14:48:08','2022-02-06 14:48:29'),(27,NULL,NULL,NULL,'sdfdfsa',NULL,NULL,NULL,NULL,NULL,'fdsa',NULL,NULL,NULL,'43214321',NULL,1,0,NULL,NULL,NULL,NULL,NULL,3,0,NULL,26,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,3,NULL,NULL,NULL,4,4,'2022-02-06 14:52:53','2022-02-06 14:58:42'),(28,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'012345674879w',NULL,0,0,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2022-02-07 13:01:07','2022-02-07 13:01:07'),(29,6,NULL,NULL,'test name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'012345674879122212',NULL,0,0,NULL,NULL,NULL,NULL,NULL,2,0,11,23,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2022-02-07 15:17:46','2022-02-07 15:17:46'),(30,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'012345674879w',NULL,0,0,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2022-02-07 13:18:05','2022-02-07 13:18:05'),(31,NULL,NULL,NULL,'test name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'012345674879',NULL,0,0,NULL,NULL,NULL,NULL,NULL,3,0,NULL,30,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2022-02-07 15:18:28','2022-02-07 15:18:28'),(32,NULL,NULL,NULL,'anas',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'01159893683',NULL,0,0,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2022-02-07 13:26:02','2022-02-07 13:26:02'),(33,NULL,NULL,NULL,'anas',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'01159893683',NULL,0,0,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2022-02-07 13:31:08','2022-02-07 13:31:08'),(34,NULL,NULL,NULL,'anas',NULL,NULL,NULL,NULL,NULL,'رؤءئر',NULL,NULL,NULL,'01159893683',NULL,0,0,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,1,1,'2022-02-07 14:18:31','2022-02-08 09:09:03'),(35,NULL,NULL,NULL,'anas',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'01159893683',NULL,0,0,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2022-02-07 14:29:55','2022-02-07 14:29:55'),(36,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'012345674879w',NULL,0,0,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2022-02-07 14:34:26','2022-02-07 14:34:26'),(37,NULL,NULL,NULL,'anas',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'01159893683',NULL,0,0,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2022-02-07 14:36:36','2022-02-07 14:36:36'),(38,NULL,NULL,NULL,'jhg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'01097540411',NULL,0,0,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2022-02-07 18:14:03','2022-02-07 18:14:03'),(39,NULL,NULL,NULL,'Anas esmaeel',NULL,NULL,NULL,NULL,NULL,'helpteam@mail.ch',NULL,NULL,NULL,'01097540411',NULL,0,0,NULL,NULL,NULL,NULL,NULL,3,0,NULL,26,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2022-02-07 20:14:40','2022-02-07 20:14:40'),(40,NULL,NULL,NULL,'youssof Zaher',NULL,NULL,NULL,NULL,NULL,'alseuf',NULL,NULL,NULL,'+201288507107',NULL,0,0,NULL,NULL,NULL,NULL,NULL,2,0,3,24,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2022-02-08 00:02:22','2022-02-08 00:02:22'),(41,NULL,NULL,NULL,'Anas',NULL,NULL,NULL,NULL,NULL,'gh',NULL,NULL,NULL,'01097540411',NULL,0,0,NULL,NULL,NULL,NULL,NULL,3,0,NULL,29,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2022-02-08 10:29:33','2022-02-08 10:29:33'),(42,NULL,NULL,NULL,'fdslka',NULL,1,NULL,'2',2,'بيسنتش','لببيسمنبيسبتبت','8','76','048930275',NULL,0,0,NULL,'87','د. بيسابتنمكبيسكمن','المنتيسكب',NULL,3,0,4,26,NULL,NULL,NULL,NULL,1000,100,NULL,0,'78',NULL,'بيتنسكمش',NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,4,1,'2022-02-08 09:08:11','2022-02-08 09:14:31'),(43,3,38,41,'gdfgfdgf',NULL,1,NULL,NULL,NULL,'تمنتن',NULL,NULL,NULL,'1097540411',NULL,1,0,NULL,'12',NULL,NULL,NULL,2,0,4,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,3,NULL,NULL,NULL,4,2,'2022-02-08 18:43:04','2022-02-08 18:45:34'),(44,NULL,NULL,NULL,'حالة 1 حجز مريض',NULL,NULL,NULL,NULL,NULL,'تبيس',NULL,NULL,NULL,'01097540432',NULL,0,0,NULL,NULL,NULL,NULL,NULL,3,0,NULL,27,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2022-02-09 10:24:50','2022-02-09 10:24:50'),(45,NULL,NULL,NULL,'حالة 2 خدمة خارجية',NULL,NULL,NULL,NULL,NULL,'helpteam@mail.ch',NULL,NULL,NULL,'01097540433',NULL,0,0,NULL,NULL,NULL,NULL,NULL,2,0,NULL,30,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2022-02-09 10:26:18','2022-02-09 10:26:18'),(46,NULL,NULL,NULL,'حالة كشف طبيب في المنزل',NULL,NULL,NULL,NULL,NULL,'بيس',NULL,NULL,NULL,'01097540411',NULL,0,0,NULL,NULL,NULL,NULL,NULL,2,0,5,24,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2022-02-09 10:27:13','2022-02-09 10:27:13'),(47,NULL,NULL,NULL,'شىشس',NULL,NULL,NULL,NULL,NULL,'الاسكندرية',NULL,NULL,NULL,'01097540411',NULL,0,0,NULL,NULL,NULL,NULL,NULL,3,0,NULL,26,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2022-02-09 13:56:28','2022-02-09 13:56:28'),(48,NULL,NULL,NULL,'fds',NULL,NULL,NULL,NULL,NULL,'helpteam@mail.ch',NULL,NULL,NULL,'01097540411',NULL,0,0,NULL,NULL,NULL,NULL,NULL,3,0,NULL,25,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2022-02-09 14:36:36','2022-02-09 14:36:36'),(49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'01097540411',NULL,0,0,NULL,NULL,NULL,NULL,NULL,3,0,NULL,26,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2022-02-09 15:13:14','2022-02-09 15:13:14'),(50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'01097540411',NULL,0,0,NULL,NULL,NULL,NULL,NULL,3,0,NULL,26,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2022-02-09 15:29:43','2022-02-09 15:29:43'),(51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'01097540411',NULL,0,0,NULL,NULL,NULL,NULL,NULL,2,0,3,24,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2022-02-09 15:32:31','2022-02-09 15:32:31'),(52,NULL,38,41,'مريض 5',NULL,NULL,NULL,NULL,NULL,'بيسمنبيسش',NULL,NULL,NULL,'01097540411',NULL,1,0,NULL,NULL,NULL,NULL,NULL,2,0,5,32,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,3,NULL,NULL,NULL,4,1,'2022-02-10 13:34:27','2022-02-10 13:36:33');
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_call`
--

DROP TABLE IF EXISTS `request_call`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_call` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int DEFAULT NULL,
  `request_id` int DEFAULT NULL,
  `department` int DEFAULT NULL,
  `call_time` datetime DEFAULT NULL,
  `note` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_id` (`admin_id`),
  KEY `request_id` (`request_id`),
  CONSTRAINT `request_call_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`),
  CONSTRAINT `request_call_ibfk_2` FOREIGN KEY (`request_id`) REFERENCES `request` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_call`
--

LOCK TABLES `request_call` WRITE;
/*!40000 ALTER TABLE `request_call` DISABLE KEYS */;
INSERT INTO `request_call` VALUES (19,1,25,1,'2022-02-05 21:39:00','wow','2022-02-05 19:36:33','2022-02-05 19:36:33'),(20,1,25,2,'2022-02-05 21:40:00','nice','2022-02-05 19:37:05','2022-02-05 19:37:05'),(21,3,27,3,'2022-02-23 20:58:00','هي حزينة','2022-02-06 14:58:42','2022-02-06 14:58:42'),(22,3,34,1,'2022-02-08 01:11:00','مكالمة هو تعبان','2022-02-08 09:09:03','2022-02-08 09:09:03'),(23,3,42,1,'2022-02-25 11:10:00','بيسشبيس','2022-02-08 09:10:25','2022-02-08 09:10:25'),(24,3,42,1,'2022-02-24 11:11:00','ريرسيسري','2022-02-08 09:11:44','2022-02-08 09:11:44'),(25,3,43,1,'2022-02-18 23:46:00','بلانا نتما لهع لات','2022-02-08 18:43:22','2022-02-08 18:43:22'),(26,3,52,2,'2022-02-26 15:36:00','بيسبيسش','2022-02-10 13:36:33','2022-02-10 13:36:33');
/*!40000 ALTER TABLE `request_call` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (0,'Super Admin',NULL,NULL);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_info`
--

DROP TABLE IF EXISTS `role_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int NOT NULL,
  `name` varchar(250) NOT NULL,
  `have_permission` int NOT NULL,
  `admin_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_id` (`admin_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `role_info_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`),
  CONSTRAINT `role_info_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_info`
--

LOCK TABLES `role_info` WRITE;
/*!40000 ALTER TABLE `role_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_ar` varchar(250) NOT NULL,
  `name_en` varchar(250) DEFAULT NULL,
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `admin_id` int NOT NULL,
  `disabled` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `type` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_en` (`name_en`),
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `service_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (23,'خدمات الطوارئ',NULL,NULL,3,1,'2022-01-26 14:40:05','2022-01-28 14:29:11','public/service/serv_.png',2),(24,'خدمات المعمل','خدمات المعمل',NULL,3,1,'2022-01-26 16:17:44','2022-01-28 14:29:03','public/service/serv_خدمات_المعمل.jpg',1),(25,'الرعاية بعد العمليات','الرعاية بعد العمليات',NULL,3,0,'2022-01-28 13:35:33','2022-01-28 13:35:33','public/service/serv_الرعاية_بعد_العمليات.jpg',1),(26,'خدمات العزل','خدمات العزل',NULL,3,0,'2022-01-28 13:36:01','2022-01-28 13:36:01','public/service/serv_خدمات_العزل.jpg',1),(27,'العناية المركزة','العناية المركزة',NULL,3,0,'2022-01-28 13:37:14','2022-01-28 13:37:14','public/service/serv_العناية_المركزة.jpg',1),(28,'الأشعة','الأشعة',NULL,3,0,'2022-01-28 13:38:04','2022-01-29 09:26:43','public/service/serv_الأشعة.jpg',2),(29,'رعاية الأمراض المزمنة','رعاية الأمراض المزمنة',NULL,3,0,'2022-01-28 13:42:08','2022-01-28 13:42:08','public/service/serv_رعاية_الأمراض_المزمنة.jpg',1),(30,'خدمات التمريض','خدمات التمريض',NULL,3,0,'2022-01-28 14:27:43','2022-01-28 14:27:43','public/service/serv_خدمات_التمريض.jpg',2),(31,'خدمات الطوارئ','خدمات الطوارئ',NULL,3,0,'2022-01-28 14:28:30','2022-01-28 14:28:30','public/service/serv_خدمات_الطوارئ.jpg',2),(32,'كشف طبيب','كشف طبيب',NULL,3,0,'2022-01-28 14:28:45','2022-01-28 14:28:45','public/service/serv_كشف_طبيب.jpg',2);
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `value` varchar(250) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting`
--

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` VALUES (1,'JoinUs','it@care-hub.net','2022-02-07 12:59:47','2022-02-07 16:32:26'),(2,'Emergency','it@care-hub.net','2022-02-07 13:00:53','2022-02-07 16:32:26'),(3,'CallCenter','it@care-hub.net','2022-02-07 13:02:36','2022-02-07 16:32:26'),(4,'InPatient','it@care-hub.net','2022-02-07 16:32:26','2022-02-07 16:32:26'),(5,'OutPatient','it@care-hub.net','2022-02-07 16:32:26','2022-02-07 16:32:26');
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialty`
--

DROP TABLE IF EXISTS `specialty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specialty` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_ar` varchar(250) NOT NULL,
  `name_en` varchar(250) NOT NULL,
  `parent_id` int DEFAULT NULL,
  `admin_id` int NOT NULL,
  `disabled` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_en` (`name_en`),
  KEY `admin_id` (`admin_id`),
  KEY `parent_id` (`parent_id`),
  CONSTRAINT `specialty_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`),
  CONSTRAINT `specialty_ibfk_2` FOREIGN KEY (`parent_id`) REFERENCES `specialty` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialty`
--

LOCK TABLES `specialty` WRITE;
/*!40000 ALTER TABLE `specialty` DISABLE KEYS */;
INSERT INTO `specialty` VALUES (1,'aa ar','كطم',NULL,1,1,'2021-12-15 10:25:23','2022-01-12 12:29:33',NULL),(2,'الباطنة','الباطنة',1,3,1,'2022-01-11 19:29:51','2022-01-29 09:45:56','public/specialty/spc_الباطنة.jpg'),(3,'جهاز هضمي','جهاز هضمي',NULL,3,0,'2022-01-11 19:30:21','2022-01-11 19:30:21','public/specialty/spc_جهاز_هضمي.jpg'),(4,'كلي','كلي',NULL,3,0,'2022-01-11 19:30:42','2022-01-11 19:30:42','public/specialty/spc_كلي.jpg'),(5,'سكر و دهنيات','سكر و دهنيات',NULL,3,0,'2022-01-11 19:31:01','2022-01-11 19:31:01','public/specialty/spc_سكر_و_دهنيات.jpg'),(6,'روماتزم و مناعة','روماتزم و مناعة',NULL,3,0,'2022-01-11 19:31:18','2022-01-11 19:31:18','public/specialty/spc_روماتزم_و_مناعة.jpg'),(7,'غدد','غدد',NULL,3,0,'2022-01-11 19:31:39','2022-01-11 19:31:39','public/specialty/spc_غدد.jpg'),(8,'شيخوخة','شيخوخة',NULL,3,0,'2022-01-11 19:31:57','2022-01-11 19:31:57','public/specialty/spc_شيخوخة.jpg'),(9,'امراض دم','امراض دم',NULL,3,0,'2022-01-11 19:32:13','2022-01-11 19:32:13','public/specialty/spc_امراض_دم.jpg'),(10,'امراض كبد','امراض كبد',NULL,3,0,'2022-01-11 19:32:44','2022-01-11 19:32:44','public/specialty/spc_امراض_كبد.jpg'),(11,'الحميات','الحميات',NULL,3,0,'2022-01-11 19:35:16','2022-01-11 19:35:16','public/specialty/spc_الحميات.jpg'),(12,'جراحة عامة','جراحة عامة',NULL,3,0,'2022-01-11 19:35:36','2022-01-11 19:35:36','public/specialty/spc_جراحة_عامة.jpg'),(13,'جراحة جهاز هضمي','جراحة جهاز هضمي',NULL,3,0,'2022-01-11 19:35:53','2022-01-11 19:35:53','public/specialty/spc_جراحة_جهاز_هضمي.jpg'),(14,'جراحة شرج و قولون','جراحة شرج و قولون',NULL,3,0,'2022-01-11 19:37:29','2022-01-11 19:37:29','public/specialty/spc_جراحة_شرج_و_قولون.jpg'),(15,'جراحة اورام','جراحة اورام',NULL,3,0,'2022-01-11 19:37:57','2022-01-11 19:37:57','public/specialty/spc_جراحة_اورام.jpg'),(16,'جراحة كبد و مرارة و بانكرياس','جراحة كبد و مرارة و بانكرياس',NULL,3,0,'2022-01-11 19:38:15','2022-01-11 19:38:15','public/specialty/spc_جراحة_كبد_و_مرارة_و_بانكرياس.jpg'),(17,'جراحة تجميل','جراحة تجميل',NULL,3,0,'2022-01-11 19:38:32','2022-01-11 19:38:32','public/specialty/spc_جراحة_تجميل.jpg'),(18,'جراحة اوعية','جراحة اوعية',NULL,3,0,'2022-01-11 19:38:55','2022-01-11 19:38:55','public/specialty/spc_جراحة_اوعية.jpg'),(19,'جراحة رأس و عنق','جراحة رأس و عنق',NULL,3,0,'2022-01-11 19:39:15','2022-01-11 19:39:15','public/specialty/spc_جراحة_رأس_و_عنق.jpg'),(20,'جراحة اطفال','جراحة اطفال',NULL,3,0,'2022-01-11 19:43:42','2022-01-11 19:43:42','public/specialty/spc_جراحة_اطفال.jpg'),(21,'جراحات تخصصية','جراحات تخصصية',NULL,3,0,'2022-01-11 19:44:31','2022-01-11 19:44:31','public/specialty/spc_جراحات_تخصصية.jpg'),(22,'مسالك','مسالك',NULL,3,0,'2022-01-11 19:46:08','2022-01-11 19:46:08','public/specialty/spc_مسالك.jpg'),(23,'جراحة مخ و اعصاب','جراحة مخ و اعصاب',NULL,3,0,'2022-01-11 19:47:26','2022-01-11 19:47:26','public/specialty/spc_جراحة_مخ_و_اعصاب.jpg'),(24,'جراحة قلب و صدر','جراحة قلب و صدر',NULL,3,0,'2022-01-11 19:49:31','2022-01-11 19:49:31','public/specialty/spc_جراحة_قلب_و_صدر.jpg'),(25,'جراحة عظام','جراحة عظام',NULL,3,0,'2022-01-11 19:50:30','2022-01-11 19:50:30','public/specialty/spc_جراحة_عظام.jpg'),(26,'عناية','عناية',NULL,3,0,'2022-01-11 19:51:04','2022-01-11 19:51:04','public/specialty/spc_عناية.jpg'),(27,'صدرية','صدرية',NULL,3,0,'2022-01-11 19:51:23','2022-01-11 19:51:23','public/specialty/spc_صدرية.jpg'),(28,'قلب','قلب',NULL,3,0,'2022-01-11 19:51:41','2022-01-11 19:51:41','public/specialty/spc_قلب.jpg'),(29,'اورام','اورام',NULL,3,0,'2022-01-11 19:51:58','2022-01-11 19:51:58','public/specialty/spc_اورام.jpg'),(30,'جلدية و تناسلية','جلدية و تناسلية',NULL,3,0,'2022-01-11 19:52:15','2022-01-11 19:52:15','public/specialty/spc_جلدية_و_تناسلية.jpg'),(31,'اسنان','اسنان',NULL,3,0,'2022-01-11 19:52:41','2022-01-11 19:52:41','public/specialty/spc_اسنان.jpg'),(32,'نفسية و عصبية','نفسية و عصبية',NULL,3,0,'2022-01-11 19:52:57','2022-01-11 19:52:57','public/specialty/spc_نفسية_و_عصبية.jpg'),(33,'انف و اذن','انف و اذن',NULL,3,0,'2022-01-11 19:53:13','2022-01-11 19:53:13','public/specialty/spc_انف_و_اذن.jpg'),(34,'تخاطب','تخاطب',NULL,3,0,'2022-01-11 19:53:32','2022-01-11 19:53:32','public/specialty/spc_تخاطب.jpg'),(35,'رمد','رمد',NULL,3,0,'2022-01-11 19:53:53','2022-01-11 19:53:53','public/specialty/spc_رمد.jpg'),(36,'تخدير و علاج الم','تخدير و علاج الم',NULL,3,0,'2022-01-11 19:54:18','2022-01-11 19:54:18','public/specialty/spc_تخدير_و_علاج_الم.jpg'),(37,'تغذية علاجية','تغذية علاجية',NULL,3,0,'2022-01-11 19:54:36','2022-01-11 19:54:36','public/specialty/spc_تغذية_علاجية.jpg'),(38,'صيدلة اكلينيكية','صيدلة اكلينيكية',NULL,3,0,'2022-01-11 19:54:53','2022-01-11 19:54:53','public/specialty/spc_صيدلة_اكلينيكية.jpg'),(39,'علاج طبيعي','علاج طبيعي',NULL,3,0,'2022-01-11 19:55:11','2022-01-11 19:55:11','public/specialty/spc_علاج_طبيعي.jpg'),(40,'امراض النساء و التوليد','امراض النساء و التوليد',NULL,3,0,'2022-01-11 19:55:33','2022-01-11 19:55:33','public/specialty/spc_امراض_النساء_و_التوليد.jpg'),(41,'اطفال','اطفال',NULL,3,0,'2022-01-11 19:55:53','2022-01-11 19:55:53','public/specialty/spc_اطفال.jpg'),(42,'اشعة تداخلية','اشعة تداخلية',NULL,3,0,'2022-01-11 19:56:12','2022-01-11 19:56:12','public/specialty/spc_اشعة_تداخلية.jpg'),(43,'a','a',NULL,3,0,'2022-01-12 15:42:07','2022-01-12 15:42:07','public/specialty/spc_a.pdf');
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
  `fname` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lname` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int DEFAULT '1',
  `verification` int DEFAULT '0',
  `mobile` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` int DEFAULT NULL,
  `title` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality_code` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `governorate_id` int DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  `address` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adress2` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_zone_patient_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_owner_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_num` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_id` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_id` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `city_id` (`city_id`),
  KEY `governorate_id` (`governorate_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  CONSTRAINT `users_ibfk_2` FOREIGN KEY (`governorate_id`) REFERENCES `governorates` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'modd1','ra1','mo ra1','1996-10-01','aa@aa.aa','01121426196',1,0,'00000000',2,'Mrs','EG',3,110,'qqwweerrtt',NULL,NULL,'fddffff','1000','ddfdfdfdf','11111111111111','101010',NULL,'$2y$10$qETIE2sIIwGNHe4j/3cd8.N740nIfeq6pmbnrutKcz0O200..O9vC','yrYfaYj5TZ2uglMlDErIQgZ8xIn7JREYx9hSkSJMIOA1ytTMUOyZ06nbO4tY','2021-12-14 13:37:47','2021-12-14 15:05:20'),(3,'aa','bb','aaaaammmmm','2015-02-25','devmrm01@gmail.com','011214261961',3,0,NULL,1,'Mr',NULL,NULL,NULL,NULL,NULL,'qwe',NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$wAFcbpOFxl164EN90mFSQeGyvLWGuIox/3qV20aeEHY3aOmyOBdOW',NULL,'2021-12-15 10:19:48','2022-01-16 19:01:54'),(4,'aa','bb','aabb','2021-12-16','bb@aa.aa','1111111111',1,0,NULL,1,'Mr',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$dRhBuT8pQvna.H8hruNnyuKr0a/RXgvleYDjfRxxQBkvrhgplvqHW','u1OH8WrDA2PB4vv3uXLvtgb4RSQoVahutBLemJvEAXtEiwq7h4rKcE0VrdNa','2021-12-18 10:03:01','2021-12-18 10:03:01'),(5,'dd','dd','ddDD','2021-12-01','dd@dd.dd','2222222222',1,1,NULL,1,'Mr',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$8B2P9xvOFxu.cQUKhTzGB.DF5iuvKpLQLUnoNTIjn14y4niH1q.pS','aeJpmvBAyVm8e5nYU4rLUazeJaK645mRYX90AptmFjKiGtrEIu45Q3Sh6KkN','2021-12-18 10:05:47','2022-01-09 12:10:32'),(6,NULL,NULL,'qq',NULL,'qq@qq.qq','123456789',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$.HRXqxpbb6gCKQdAZWXQC.hlwUV6ZMXeQSIh8jRCiuy4d7PfGKF0S',NULL,'2022-01-09 18:00:19','2022-01-09 18:00:19'),(7,NULL,NULL,'anas2',NULL,'anas.esm@gmail.com','01097540411',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$42DXtgQk7MBupe/4VTZWv.02BgTQQqqt7BGYvsN5K4b7hwl8Nhl4S',NULL,'2022-01-11 12:25:24','2022-01-11 12:25:24'),(8,NULL,NULL,'anas2',NULL,'anas.esm@gmail.co','01097545511',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$Q/qHPB2.3aLscSmUXCy1DOX4dOVIzcF8mVTKu5DKAvFy6y3LxpKZS',NULL,'2022-01-11 13:04:55','2022-01-11 13:04:55'),(9,NULL,NULL,'anas2',NULL,'aas.esm@gmail.co','01097545311',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$5mIZHbPKi2xaEW1BarGrZOiT0OIhoLw7DJQdj1Z57UQ6sbSAE.p0C',NULL,'2022-01-11 13:10:00','2022-01-11 13:10:00'),(10,NULL,NULL,'anas2',NULL,'anas.e44m@gmail.com','01097544411',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$nsNCpwKp1yHXWC358Y6voea3ZP584M9.M5B.Q7.CT04Ocv08DclmC',NULL,'2022-01-11 13:10:31','2022-01-11 13:10:31'),(11,NULL,NULL,'anas2',NULL,'anas.es4m@gmail.com','010975404411',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$0r3RWUoNpm6WBScKHJb6/.z/TO.T4rJywbXhfN4uQhnV2ye6bUY8S',NULL,'2022-01-11 13:34:57','2022-01-11 13:34:57'),(12,NULL,NULL,'anoos',NULL,'ra.es@g.com','01129855185',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$QOvj6nZXustzudRvEHorPO0CbbaK.zc.ikH0QIy5Hy3IDA3y6kz46',NULL,'2022-01-11 17:51:42','2022-01-11 17:51:42'),(13,NULL,NULL,'anas',NULL,'a.e@g.c','01159893683',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$SuzW97jFvGRbwBmhMF9hd.V1CPRxW.b9.IHjaryNtw6sQvro/y9jq',NULL,'2022-01-25 11:59:36','2022-01-25 11:59:36'),(14,NULL,NULL,'anas',NULL,'a.e2@g.c','01159893682',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$22d3UEKJIR8p0o0bHg3Y7eyfucWTEGq4d6Gv/GDj6tEvNUR0n940.',NULL,'2022-01-25 12:02:17','2022-01-25 12:02:17'),(15,NULL,NULL,'ALAA',NULL,'a.elghandour@care-hub.net','01559900865',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$EemrP49mBBVd0ElJ.2qudu7Q1iNTVywnvjAb5sa2YWvfkTRpzJvta',NULL,'2022-01-25 15:02:06','2022-01-25 15:02:06'),(16,NULL,NULL,'anas',NULL,'a.esmaeel@care-hub.net','01159893684',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$rSFySHoM1GKI/T.t3Ud/5uEucgoSo66flcUO6yNzxEyoCKr5iLzLC',NULL,'2022-01-26 13:25:56','2022-01-26 13:25:56'),(17,NULL,NULL,'ahmed',NULL,'a.care-hub@outlook.com','01159893685',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$gU39F4hZ0dtARl.WOpziT.egASbUNkeopDA4U7Z2WHGbb6kFoSo42',NULL,'2022-01-26 13:50:02','2022-01-26 13:50:02'),(18,NULL,NULL,'Duck',NULL,'anas.es4ddddm@gmail.com','01097540419',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$IPEpigMV9OHzCimt1uH0VOCCkr6SegdSUVOb1Pm7BrZyGb1fWi7m.',NULL,'2022-01-27 21:15:03','2022-01-27 21:15:03'),(19,NULL,NULL,'ziad.kawas.m@gmail.com',NULL,'anas.es4m@gmaikkkkl.com','01097540431',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$GZVsU5TDe5DJ1V0TJzcYReYYsZaJh0JJPllgYGdHHSJtA0lNuYBDi',NULL,'2022-01-27 21:17:14','2022-01-27 21:17:14'),(20,NULL,NULL,'fdsfds',NULL,'anas.esm@gmail.com4444','01097553511',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$v0RikR5RMUOk8qVWP2WFmuG7CLX1hnZbMDSzmxKC/5iiYTWJnnaU.',NULL,'2022-01-27 21:18:54','2022-01-27 21:18:54'),(21,NULL,NULL,'user1',NULL,'anas.es4m@gmail.522','01097540778',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$rwMtm5xXL.AoXroIpwLtn.RTcK8R6lW1vof2a/2a/GBUEzLERiYX6',NULL,'2022-01-27 21:21:02','2022-01-27 21:21:02'),(22,NULL,NULL,'fjdksl',NULL,'anas.esm@gmail.877','01097540987',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$gpdRbCOSzZeEFFsC34YltOAdNKLpWXr99wiVbHSsWPvsuDv.REu0C',NULL,'2022-01-27 21:22:01','2022-01-27 21:22:01'),(23,NULL,NULL,'user1',NULL,'anas.esm@gmai55l.com','01097540333',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$0PuXPYq8jDs/x/biHes.LuITo0iNObaJjHRQPRpVJcJ6AAV4vN5ei',NULL,'2022-01-27 21:25:59','2022-01-27 21:25:59'),(24,NULL,NULL,'anas2',NULL,'anas.esm@gmail.c33ds','01097540432',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$RpjhsO.uBo9MNXwKYJzbsuS1ANmwcwHVKf.q3yhS.DJ8v/7I.GIE6',NULL,'2022-01-27 21:28:43','2022-01-27 21:28:43'),(25,NULL,NULL,'anas2',NULL,'anas.es4m@gm222.com','01097543333',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$cjrL62.xO1V.6HknXVdFWO26ZURWNITm06ZpeyfeStYaCGGAl/606',NULL,'2022-01-27 21:31:09','2022-01-27 21:31:09'),(26,NULL,NULL,'Satamoony_Admin',NULL,'anas.es4m@gmail.22d','01097542222',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$GTmmp3pb56iwiZg2vIvuHOMM56CY.tIfkO3c/USl11n9Kihfzkvpe',NULL,'2022-01-27 21:32:39','2022-01-27 21:32:39'),(27,NULL,NULL,'user1',NULL,'anas.esm@gmailknk.jjkj','01097544343',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$5Ws1P0nBEyfPiOULuj2rvuiRVxWC5lsY2xsczDbS/o0HHId/Iy.Ge',NULL,'2022-01-27 21:35:06','2022-01-27 21:35:06'),(28,NULL,NULL,'user1',NULL,'anas.es4m@gmaildjdjd','01097540789',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$ZQwegMiPmLQ73GiLl9ImP.CjTM3luPXqtMVVxsETrAQ3kFluRfnVu',NULL,'2022-01-27 21:36:45','2022-01-27 21:36:45'),(29,NULL,NULL,'Menna younes',NULL,'mennayounes14@gmail.com','01205755615',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$ehW1LH1DKxOUn4cTbACkVux2n5wAZjc9094Aan/PGFQgYqABsiAry',NULL,'2022-01-28 14:34:44','2022-01-28 14:34:44'),(30,NULL,NULL,'Mostafa',NULL,'jytufthc@gdr.co','01555519971',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$/BDMfclGWCzJW3C.zYFxAu.GPsykUtn7iCf5MaKOzuoThqitvfXNW',NULL,'2022-01-29 09:51:58','2022-01-29 09:51:58'),(31,NULL,NULL,'Hossam Elmassry',NULL,'ibrahhm1010@gmail.com','01207800001',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$dev8YV08wK16Mqe3Jy9IveRy.AACTnD3Alo4QFsG6JaYjSueROY7G',NULL,'2022-01-29 13:57:38','2022-01-29 13:57:38'),(32,NULL,NULL,'165',NULL,'anas.esm@gmai43fgd.c','01097540451',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$3kSSnlfCad6TwA55QeJED.vGRqzGy4wi6.CWjT.bNOp.dfeQt8ESa',NULL,'2022-01-29 14:08:57','2022-01-29 14:08:57'),(33,NULL,NULL,'fda',NULL,'anas.esm@gmail.fdsaew','01097544567',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$iKeKDQUQ8QMF3Kmk5oMLqOsAnwllJsshUXOREPjp8X0PA8ZOxfKxe',NULL,'2022-01-30 11:16:35','2022-01-30 11:16:35'),(34,NULL,NULL,'بيس',NULL,'anas.es4m@gmail.fds','01097540486',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$P5eznWDSBe8OSnWOnUAbaOHssPyaqw3lwFMEj6r9aHA5ZaCXQber6',NULL,'2022-01-30 11:25:09','2022-01-30 11:25:09'),(35,NULL,NULL,'fds',NULL,'anas.esm@gmailsad','01097540534',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$slCYg19TB5ygUTBcojsvnOb7WgxotM4R4TDP3Kd.RUuWNwfQjn/JK',NULL,'2022-01-30 11:28:54','2022-01-30 11:28:54'),(36,NULL,NULL,'Hassan Mahrous',NULL,'hassnmahrous7@gmail.com','01227912487',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$te.HAgNiioQwLdCw1SSZ4ulYAJjtetu7k9VT/hte5OWhH2dcbe372',NULL,'2022-01-30 14:27:41','2022-01-30 14:27:41'),(37,NULL,NULL,'qqTest',NULL,NULL,'123456789q',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$7ko7GoQ43BJL6RutI0migOA6W0Nr8xQqwF.a2WjMlZwbNASbOMkPG',NULL,'2022-01-31 17:31:14','2022-01-31 17:31:14'),(38,NULL,NULL,'د. احمد حمدي',NULL,'anas.esm@gmaifdsafds','010995542522',2,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$zAge4xGHRyXp4ExZ/DTiDOA.GWg5Vt4V9RfIjmVBae5Kg9R9.uApC',NULL,'2022-02-01 09:48:13','2022-02-01 12:19:12'),(39,NULL,NULL,'ziad',NULL,'ziad.kawas.m@gmail.com','01200613545',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$XMVHtxwzQ/tQI1eUwNqI2eYoaUBz524k4o7fGhDxwaFk2WUtiD04e',NULL,'2022-02-01 21:24:18','2022-02-01 21:24:18'),(40,NULL,NULL,'youssof',NULL,'laboratoryegypt@gmail.com','01288507175',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$qPGFtmtf7DHs2IpdaV5MzOBMmgYhFysbDpB7/zMZVVcPJS/tod5SW',NULL,'2022-02-07 22:04:12','2022-02-07 22:04:12'),(41,NULL,NULL,'ممرض احمد خالد',NULL,'anas@carehub.net','1097540485',4,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$UrDvrwSFpYhqVZND/GeQw.lGF3mkFlP/OA9h.TpReNr4xwcd4BTh6',NULL,'2022-02-08 18:45:10','2022-02-08 18:45:10'),(42,NULL,NULL,'aaa',NULL,'121212ddd@gmail.com','012345678912451',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$HgNB/6LPSdTU.Ixac1k30OP6BErSN/xcpH5BO5PeZnPFhX3EWM/hy',NULL,'2022-02-09 21:17:06','2022-02-09 21:17:06'),(43,NULL,NULL,'Peter',NULL,'patoutaaa_3@yahoo.com','01273072239',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$HCB6gNdcCQ0U6MhiytFoyOSE2/aQcjMkNZnycVSNJzf35RdmuxQ2e',NULL,'2022-02-10 10:51:29','2022-02-10 10:51:29');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_survey`
--

DROP TABLE IF EXISTS `web_survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_survey` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `age` int DEFAULT '0',
  `opinion_carehub` int DEFAULT '0',
  `know_carehub` int DEFAULT '0',
  `try_carehub` int DEFAULT '0',
  `note` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `web_survey_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_survey`
--

LOCK TABLES `web_survey` WRITE;
/*!40000 ALTER TABLE `web_survey` DISABLE KEYS */;
INSERT INTO `web_survey` VALUES (2,NULL,'mrm','123',1,1,1,1,'nice','2022-02-02 16:53:32','2022-02-02 16:53:32'),(3,NULL,'mrm','123',1,1,1,1,'nice','2022-02-02 16:54:05','2022-02-02 16:54:05'),(4,37,'mrm','123',1,1,1,1,'nice','2022-02-02 16:54:56','2022-02-02 16:54:56'),(5,37,'mrm','123',1,NULL,1,1,'nice','2022-02-05 13:30:06','2022-02-05 13:30:06'),(6,NULL,'mrm','123',1,1,1,1,'nice','2022-02-05 14:07:36','2022-02-05 14:07:36'),(7,NULL,'anas2','01097540411',1,1,1,1,NULL,'2022-02-05 14:19:54','2022-02-05 14:19:54'),(8,NULL,'fdsa','01097540411',1,1,1,1,NULL,'2022-02-06 13:19:52','2022-02-06 13:19:52'),(9,NULL,'Khaled hassan','01229599091',1,3,1,1,NULL,'2022-02-09 16:24:17','2022-02-09 16:24:17'),(10,NULL,'Anas Esmaeel','01097540411',1,1,1,1,NULL,'2022-02-09 16:42:02','2022-02-09 16:42:02'),(11,NULL,'عمار عبد الحميد عبد المجيد','01270061808',2,3,1,2,NULL,'2022-02-09 16:42:46','2022-02-09 16:42:46'),(12,NULL,'Doaa','01065005311',3,4,1,2,NULL,'2022-02-10 09:10:27','2022-02-10 09:10:27'),(13,NULL,'Noha salama','01 0031 1305 7',2,1,2,2,NULL,'2022-02-10 09:18:59','2022-02-10 09:18:59'),(14,NULL,'نورهان اشرف','٠١٢٨٢٩٨٠٥٠٧',1,1,2,2,NULL,'2022-02-10 09:22:31','2022-02-10 09:22:31'),(15,NULL,'هند عادل','01126665554',1,1,2,2,NULL,'2022-02-10 09:22:38','2022-02-10 09:22:38'),(16,NULL,'لمياء مصطفي محمد','01288395163',3,3,2,2,NULL,'2022-02-10 09:23:18','2022-02-10 09:23:18'),(17,NULL,'وفاء محمود','+2001225715971',3,1,2,2,NULL,'2022-02-10 09:32:28','2022-02-10 09:32:28'),(18,NULL,'علا علي محمد','٠١٢٠٠٩٨٩١٩٠',2,3,2,2,NULL,'2022-02-10 10:33:02','2022-02-10 10:33:02'),(19,NULL,'دعاء عبد الوهاب','01203059308',3,3,2,2,NULL,'2022-02-10 10:33:54','2022-02-10 10:33:54'),(20,NULL,'شيماء زيدان','01062857957',2,4,2,2,NULL,'2022-02-10 10:40:01','2022-02-10 10:40:01'),(21,NULL,'Peter','01273072238',2,4,2,2,NULL,'2022-02-10 10:50:17','2022-02-10 10:50:17'),(22,NULL,'داليا صلاح','01065305030',3,4,2,2,NULL,'2022-02-10 11:05:31','2022-02-10 11:05:31'),(23,NULL,'داليا الليثي','٠١٠٣٢٣٦١١٢٧',1,3,2,2,NULL,'2022-02-10 11:23:44','2022-02-10 11:23:44'),(24,NULL,'منه الله عزت','1211998925',1,1,2,2,NULL,'2022-02-10 11:25:46','2022-02-10 11:25:46'),(25,NULL,'احمد على عبد ربه','+201223841650',3,4,2,2,NULL,'2022-02-10 11:50:24','2022-02-10 11:50:24'),(26,NULL,'مني عسكر','01113890020',4,3,1,2,NULL,'2022-02-10 12:02:58','2022-02-10 12:02:58'),(27,NULL,'اسراء محمود','٠١٠٦٢٦٠٦٣٦٣',2,4,2,2,NULL,'2022-02-10 12:08:50','2022-02-10 12:08:50'),(28,NULL,'اسراء محمود','٠١٠٦٢٦٠٦٣٦٣',2,4,2,2,NULL,'2022-02-10 12:08:51','2022-02-10 12:08:51'),(29,NULL,'Hadir abdelmnem','01002535148',2,4,2,2,NULL,'2022-02-10 12:12:17','2022-02-10 12:12:17'),(30,NULL,'Hadir abdelmnem','01002535148',2,4,2,2,NULL,'2022-02-10 12:12:17','2022-02-10 12:12:17'),(31,NULL,'كامل محروس فرح','0155553608827',3,3,2,2,NULL,'2022-02-10 12:15:37','2022-02-10 12:15:37'),(32,NULL,'ناهد بديع','٠١٢٢٣٨١٠٠١١',4,4,2,2,NULL,'2022-02-10 12:24:23','2022-02-10 12:24:23'),(33,NULL,'نادية احمد','034261986',4,3,2,2,NULL,'2022-02-10 12:40:43','2022-02-10 12:40:43'),(34,NULL,'رمضان حسن','01220886572',2,3,2,2,NULL,'2022-02-10 12:42:51','2022-02-10 12:42:51'),(35,NULL,'رمضان حمدي سعد','01221449888',2,1,2,2,NULL,'2022-02-10 12:43:41','2022-02-10 12:43:41'),(36,NULL,'وليد شعبان','01270766630',3,3,2,2,NULL,'2022-02-10 12:53:11','2022-02-10 12:53:11'),(37,NULL,'نهي احمد','01201133733',2,3,1,2,NULL,'2022-02-10 13:04:29','2022-02-10 13:04:29'),(38,NULL,'سارة حمدي','01017003710',2,3,2,2,NULL,'2022-02-10 13:09:34','2022-02-10 13:09:34'),(39,NULL,'نورهان عبد الحميد','01090231485',1,3,2,2,NULL,'2022-02-10 13:18:42','2022-02-10 13:18:42'),(40,NULL,'Samah mansour','01283316035',3,3,2,2,NULL,'2022-02-10 13:20:46','2022-02-10 13:20:46'),(41,NULL,'Mariam adel','01212995573',1,3,2,2,NULL,'2022-02-10 13:21:20','2022-02-10 13:21:20'),(42,NULL,'Samia mahmoud','01200176634',3,3,2,2,NULL,'2022-02-10 13:30:11','2022-02-10 13:30:11'),(43,NULL,'Shaimaa mohamed','01211808427',2,3,2,2,NULL,'2022-02-10 13:31:01','2022-02-10 13:31:01'),(44,NULL,'Hani el kahky','01270010070',4,3,2,2,NULL,'2022-02-10 13:34:45','2022-02-10 13:34:45'),(45,NULL,'Rehab ali','01003860804',3,3,2,2,NULL,'2022-02-10 13:35:20','2022-02-10 13:35:20'),(46,NULL,'فدوي فاروق','01220133599',4,3,1,2,NULL,'2022-02-10 13:58:47','2022-02-10 13:58:47'),(47,NULL,'جيهان محمد','01270133881',3,3,2,2,NULL,'2022-02-10 14:06:07','2022-02-10 14:06:07'),(48,NULL,'Faten mohamed','01280057770',2,3,2,2,NULL,'2022-02-10 14:07:15','2022-02-10 14:07:15'),(49,NULL,'Shaza moustafa','01011639777',3,3,2,2,NULL,'2022-02-10 14:11:53','2022-02-10 14:11:53'),(50,NULL,'Ashraf mekka','01006935151',4,3,2,2,NULL,'2022-02-10 14:37:29','2022-02-10 14:37:29'),(51,NULL,'د. محمد محمود','01002010040',3,3,2,2,NULL,'2022-02-10 14:40:42','2022-02-10 14:40:42'),(52,NULL,'Mohamed abo elmakarem','01100291530',1,3,2,2,NULL,'2022-02-10 14:49:26','2022-02-10 14:49:26'),(53,NULL,'Hanan elgamal','01115780426',2,3,2,2,NULL,'2022-02-10 14:50:44','2022-02-10 14:50:44'),(54,NULL,'كيرلس سامي','01285789735',1,1,2,2,NULL,'2022-02-10 14:51:28','2022-02-10 14:51:28'),(55,NULL,'Nesrine selim','01142040422',2,3,2,2,NULL,'2022-02-10 15:11:29','2022-02-10 15:11:29'),(56,NULL,'Shahy khaled','01118823611',1,3,2,2,NULL,'2022-02-10 15:15:11','2022-02-10 15:15:11'),(57,NULL,'نوال جمال','01115443227',1,3,2,2,NULL,'2022-02-10 15:15:20','2022-02-10 15:15:20'),(58,NULL,'ياسمين المطلق','01061127436',1,3,2,2,NULL,'2022-02-10 15:16:19','2022-02-10 15:16:19'),(59,NULL,'لمياء محمد','01284220799',1,1,1,2,NULL,'2022-02-10 15:31:47','2022-02-10 15:31:47'),(60,NULL,'احمد مصطفي','٠١٢٧٨٧٦٦٣٢١٥',2,1,2,2,NULL,'2022-02-10 16:17:47','2022-02-10 16:17:47'),(61,NULL,'دعاء عبدالباسط','٠١٢٨٨١٧٣٠١٥',2,1,2,2,NULL,'2022-02-10 16:19:36','2022-02-10 16:19:36'),(62,NULL,'Amr Ibrahim','01229818384',2,3,2,2,NULL,'2022-02-10 16:20:36','2022-02-10 16:20:36'),(63,NULL,'هدير احمد','٠١٢٧٦٧٤٤٤٢٤',2,1,2,2,NULL,'2022-02-10 16:20:59','2022-02-10 16:20:59'),(64,NULL,'عزه عبدالصبور','٠١٢٢٢٤٩٣٩٣١',2,1,2,2,NULL,'2022-02-10 16:21:46','2022-02-10 16:21:46'),(65,NULL,'عزه عبدالصبور','٠١٢٢٢٤٩٣٩٣١',2,1,2,2,NULL,'2022-02-10 16:21:47','2022-02-10 16:21:47'),(66,NULL,'Ayman sadek','01276000531',2,3,2,2,NULL,'2022-02-10 16:24:07','2022-02-10 16:24:07'),(67,NULL,'مريان عبد الرحمن','٠١٠٠٦٤٤٦٩٧٧',3,1,1,1,NULL,'2022-02-10 16:40:22','2022-02-10 16:40:22'),(68,NULL,'مريان عبد الرحمن','٠١٠٠٦٤٤٦٩٧٧',3,1,1,1,NULL,'2022-02-10 16:40:22','2022-02-10 16:40:22'),(69,NULL,'Omar ashour','01554421808',2,3,2,2,NULL,'2022-02-10 16:41:56','2022-02-10 16:41:56'),(70,NULL,'Mohamed Zidan','01004321456',2,3,2,2,NULL,'2022-02-10 16:46:58','2022-02-10 16:46:58'),(71,NULL,'Menatullah Mohamed','01276556123',1,1,1,2,NULL,'2022-02-10 16:53:09','2022-02-10 16:53:09'),(72,NULL,'Sara Alaa eldin','01278444427',1,1,2,2,NULL,'2022-02-10 16:53:50','2022-02-10 16:53:50'),(73,NULL,'Abdallah elfeky','01207476555',1,3,2,2,NULL,'2022-02-10 17:00:44','2022-02-10 17:00:44'),(74,NULL,'Ebrahim khaled','01002676344',1,3,2,2,NULL,'2022-02-10 17:01:17','2022-02-10 17:01:17'),(75,NULL,'Wafaa Saied','01211302265',3,3,2,2,NULL,'2022-02-10 17:05:58','2022-02-10 17:05:58'),(76,NULL,'Tarek Mahfouz Anwar','01111142660',3,3,2,2,NULL,'2022-02-10 17:12:50','2022-02-10 17:12:50'),(77,NULL,'Nehal Elmallah','01091946411',1,1,1,2,NULL,'2022-02-10 17:23:48','2022-02-10 17:23:48'),(78,NULL,'مارك عادل جورج','01272300105',1,3,2,2,NULL,'2022-02-10 17:29:00','2022-02-10 17:29:00'),(79,NULL,'مارك عادل جورج','01272300105',1,3,2,2,NULL,'2022-02-10 17:29:00','2022-02-10 17:29:00'),(80,NULL,'مارك عادل جورج','01272300105',1,3,2,2,NULL,'2022-02-10 17:29:00','2022-02-10 17:29:00'),(81,NULL,'مارك عادل جورج','01272300105',1,3,2,2,NULL,'2022-02-10 17:29:01','2022-02-10 17:29:01'),(82,NULL,'Eslam Ghoneim','01110967177',2,3,2,2,NULL,'2022-02-10 17:30:10','2022-02-10 17:30:10'),(83,NULL,'Assem Ramadan','01005551866',2,3,2,2,NULL,'2022-02-10 17:31:12','2022-02-10 17:31:12'),(84,NULL,'مصطفى عبد الشكور','٠١٢٨٥٥٨٧٩٠٩',1,3,2,2,NULL,'2022-02-10 17:31:46','2022-02-10 17:31:46'),(85,NULL,'Marah Attia','01021171102',1,3,2,2,NULL,'2022-02-10 17:45:00','2022-02-10 17:45:00'),(86,NULL,'Salma mahmoud','01226035656',1,3,2,2,NULL,'2022-02-10 18:09:19','2022-02-10 18:09:19'),(87,NULL,'Sherin atya','01023222938',2,3,2,2,NULL,'2022-02-10 18:11:27','2022-02-10 18:11:27'),(88,NULL,'Norhan fathy','01094615003',2,3,2,2,NULL,'2022-02-10 18:11:54','2022-02-10 18:11:54'),(89,NULL,'Sara ismail','01022107886',2,3,2,2,NULL,'2022-02-10 18:12:30','2022-02-10 18:12:30'),(90,NULL,'Shimaa ismail','01006751320',2,3,2,2,NULL,'2022-02-10 18:13:03','2022-02-10 18:13:03'),(91,NULL,'Noha Samir','01001306236',2,3,2,2,NULL,'2022-02-10 18:14:46','2022-02-10 18:14:46'),(92,NULL,'سلوي عثمان فتح الله','01224458704',4,3,2,2,NULL,'2022-02-10 18:22:09','2022-02-10 18:22:09'),(93,NULL,'Rowan ahmed','01125200540',1,3,1,1,NULL,'2022-02-10 18:27:39','2022-02-10 18:27:39'),(94,NULL,'Shimaa hassan','01207015141',2,1,2,2,NULL,'2022-02-10 18:30:24','2022-02-10 18:30:24'),(95,NULL,'Shreen ali','01222309553',3,3,2,2,NULL,'2022-02-10 18:31:40','2022-02-10 18:31:40'),(96,NULL,'محمد عبد المحسن','01011665800',3,3,2,2,NULL,'2022-02-10 18:33:17','2022-02-10 18:33:17'),(97,NULL,'Ayman saad','01007435071',3,3,2,2,NULL,'2022-02-10 18:35:19','2022-02-10 18:35:19'),(98,NULL,'Ayman saad','01007435071',3,3,2,2,NULL,'2022-02-10 18:35:20','2022-02-10 18:35:20'),(99,NULL,'Mona mosaad','01002099607',2,3,2,2,NULL,'2022-02-10 18:35:53','2022-02-10 18:35:53'),(100,NULL,'هبه الله ابراهيم','01001418295',3,3,2,2,NULL,'2022-02-10 18:40:57','2022-02-10 18:40:57'),(101,NULL,'Nahla ahmed','01027773780',2,1,2,2,NULL,'2022-02-10 18:54:30','2022-02-10 18:54:30'),(102,NULL,'Menna fawzy','01140488440',2,1,2,2,NULL,'2022-02-10 18:55:57','2022-02-10 18:55:57'),(103,NULL,'Ahmed nabel','01008286565',2,1,2,2,NULL,'2022-02-10 18:56:46','2022-02-10 18:56:46'),(104,NULL,'Walaa mohmed','01003746122',2,1,2,2,NULL,'2022-02-10 19:00:00','2022-02-10 19:00:00'),(105,NULL,'Ghada salah','01148112366',2,1,2,2,NULL,'2022-02-10 19:00:30','2022-02-10 19:00:30'),(106,NULL,'Rania Hosny','01281603131',3,1,2,2,NULL,'2022-02-10 19:01:45','2022-02-10 19:01:45'),(107,NULL,'Azza Ali','01211441480',3,3,2,2,NULL,'2022-02-10 19:04:51','2022-02-10 19:04:51');
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

-- Dump completed on 2022-02-12 12:30:59
