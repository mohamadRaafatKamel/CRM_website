<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CitiesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::insert("
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
        ");
    }
}
