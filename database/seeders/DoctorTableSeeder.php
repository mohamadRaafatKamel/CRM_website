<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DoctorTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::insert("
        INSERT INTO `users`(`id`,`username`, `phone`, `password`, `quick`, `verification`, `type`) 
            VALUES 
            ('1000','ابراهيم السيد','1093459970','000000000000','1','1','2'),
            ('1001','ابراهيم عبد الفتاح','1553566609','000000000000','1','1','2'),
            ('1002','احمد الحضري','1287332937','000000000000','1','1','2'),
            ('1003','احمد السماديسي','1147747736','000000000000','1','1','2'),
            ('1004','احمد جنيدي','1285569210','000000000000','1','1','2'),
            ('1005','احمد حجازي','1226597670','000000000000','1','1','2'),
            ('1006','احمد حسن','1005717746/1114221141','000000000000','1','1','2'),
            ('1007','احمد خليل 2012','01007159197/01286369427','000000000000','1','1','2'),
            ('1008','احمد رجب','1001797019','000000000000','1','1','2'),
            ('1009','احمد رجب 2017','01221054720/01015330224','000000000000','1','1','2'),
            ('1010','احمد رمضان','1001658059','000000000000','1','1','2'),
            ('1011','احمد شبانة','1141461611','000000000000','1','1','2'),
            ('1012','احمد صبري','1224263690','000000000000','1','1','2'),
            ('1013','احمد طه','1012535437','000000000000','1','1','2'),
            ('1014','احمد علبة','1221493258','000000000000','1','1','2'),
            ('1015','احمد عويضة','1015316602','000000000000','1','1','2'),
            ('1016','احمد فتح الله صدقي','1202877220','000000000000','1','1','2'),
            ('1017','احمد فتحي','1028440077','000000000000','1','1','2'),
            ('1018','احمد فرج','1111609023','000000000000','1','1','2'),
            ('1019','احمد قاسم','1275154080','000000000000','1','1','2'),
            ('1020','احمد كمال كمال','1011423580','000000000000','1','1','2'),
            ('1021','احمد محسب','1278135586','000000000000','1','1','2'),
            ('1022','احمد ناصر','1277948131','000000000000','1','1','2'),
            ('1023','اسعد لويس','1003714680','000000000000','1','1','2'),
            ('1024','اسلام 2017','1206121833','000000000000','1','1','2'),
            ('1025','اسلام عطا','01222751703 / 01063772294','000000000000','1','1','2'),
            ('1026','اسلام محب','1210864168','000000000000','1','1','2'),
            ('1027','اسلام محمد رضا','1012508478','000000000000','1','1','2'),
            ('1028','اشرف قاسم','1097979965','000000000000','1','1','2'),
            ('1029','الجمل','01092112249/01206830100','000000000000','1','1','2'),
            ('1030','الحسن محمد ايمن','1206029300','000000000000','1','1','2'),
            ('1031','المنخلي','1555257050','000000000000','1','1','2'),
            ('1032','امجد ميلاد متري','1223792492','000000000000','1','1','2'),
            ('1033','اية شوقي','1008121773','000000000000','1','1','2'),
            ('1034','ايمان رمضان','01112454251/01027850006','000000000000','1','1','2'),
            ('1035','ايمن معالي','1002258463','000000000000','1','1','2'),
            ('1036','ايميل عطالله','1226427133','000000000000','1','1','2'),
            ('1037','ايهاب عماد الدين','1555596951','000000000000','1','1','2'),
            ('1038','إبراهيم فرج','1114093738','000000000000','1','1','2'),
            ('1039','إسماعيل محمد شريف نوح','1017392233','000000000000','1','1','2'),
            ('1040','إيمان رمضان','1112454251','000000000000','1','1','2'),
            ('1041','أحمد ابو زيد','1224037753','000000000000','1','1','2'),
            ('1042','أحمد شعبان','1006909094','000000000000','1','1','2'),
            ('1043','أحمد صابر','1006447391','000000000000','1','1','2'),
            ('1044','أحمد كمال علي','1279734654','000000000000','1','1','2'),
            ('1045','أحمد محسن','1007113236','000000000000','1','1','2'),
            ('1046','أحمد معوض عبدالعظيم','1099892978','000000000000','1','1','2'),
            ('1047','أحمد نبيل','1149363246','000000000000','1','1','2'),
            ('1048','أكرم فوزي محمد','1117994901','000000000000','1','1','2'),
            ('1049','بيتر ريمون','1223619942','000000000000','1','1','2'),
            ('1050','تامر فاروق','1021592573','000000000000','1','1','2'),
            ('1051','جان جاك جوده','1200876100','000000000000','1','1','2'),
            ('1052','جوزيف يسري يوسف','1552265430','000000000000','1','1','2'),
            ('1053','جون انيس','1224679155','000000000000','1','1','2'),
            ('1054','حازم حافظ','1008183796','000000000000','1','1','2'),
            ('1055','خالد عزت','1005212928','000000000000','1','1','2'),
            ('1056','خالد محمد مصطفي علي','1001293288','000000000000','1','1','2'),
            ('1057','دعاء حمدي','1007111402','000000000000','1','1','2'),
            ('1058','دينا محمود الحصري','1205340840','000000000000','1','1','2'),
            ('1059','رفيق عدلي','1002338961','000000000000','1','1','2'),
            ('1060','روماني سمير','1201259507','000000000000','1','1','2'),
            ('1061','زياد فهمي','01063620518-01225988385','000000000000','1','1','2'),
            ('1062','زينب جابر عجمي','1125948170','000000000000','1','1','2'),
            ('1063','سارة صلاح','1111974396','000000000000','1','1','2'),
            ('1064','سعيد محمد خليل','1221337058','000000000000','1','1','2'),
            ('1065','سليمان 2015','1228803523','000000000000','1','1','2'),
            ('1066','سمر سعد اللبان','1275602154','000000000000','1','1','2'),
            ('1067','سهيل ايمن فخري','1112420392','000000000000','1','1','2'),
            ('1068','شادي شلبي','01027743229/01228358668','000000000000','1','1','2'),
            ('1069','شريف عبد السلام','1003998913','000000000000','1','1','2'),
            ('1070','شهاب اشرف حمزة','1005172264','000000000000','1','1','2'),
            ('1071','ضحي مجدي','1011554222','000000000000','1','1','2'),
            ('1072','عُمر المهدي','1001742013','000000000000','1','1','2'),
            ('1073','عادل اسماعيل','1112182164','000000000000','1','1','2'),
            ('1074','عادل عبد الرحمن الشاذلي','1222148014','000000000000','1','1','2'),
            ('1075','عاصم غزلان','111165 6255/1008421927','000000000000','1','1','2'),
            ('1076','عبد الحميد بدر الدين','1008158544','000000000000','1','1','2'),
            ('1077','عبد الرحمن 2017','1552500425','000000000000','1','1','2'),
            ('1078','عبد الرحمن خضر','1100267994','000000000000','1','1','2'),
            ('1079','عبد الرحمن سعودي','/1552500425','000000000000','1','1','2'),
            ('1080','عبد الرحمن مصطفي','01092871231---01554517557','000000000000','1','1','2'),
            ('1081','عبد العزيز امين عبد العزيز','01019399599-01118432844','000000000000','1','1','2'),
            ('1082','عبد العظيم 2016','01271975404/01100710464','000000000000','1','1','2'),
            ('1083','عبد الله 2015','01099574139/01278060517','000000000000','1','1','2'),
            ('1084','عبد الله عباس','1062133775','000000000000','1','1','2'),
            ('1085','عبدالرحمن يوسف','1204667330','000000000000','1','1','2'),
            ('1086','عبدالعزيز صلاح مصطفي','1001528915','000000000000','1','1','2'),
            ('1087','علاء الدخس','1005378925','000000000000','1','1','2'),
            ('1088','علاء عبدالسلام داود','1223525385','000000000000','1','1','2'),
            ('1089','علاء فاروق الراعي','1223411715','000000000000','1','1','2'),
            ('1090','علي الشداد 2017','1097528999','000000000000','1','1','2'),
            ('1091','علي أبو شادي','1128381538','000000000000','1','1','2'),
            ('1092','عماد حمدي','01226157150/0101027900','000000000000','1','1','2'),
            ('1093','عماد زكريا','1006005742','000000000000','1','1','2'),
            ('1094','عمار نعينع','1003098772','000000000000','1','1','2'),
            ('1095','عمر رأفت','1025638268','000000000000','1','1','2'),
            ('1096','عمر رياض','01025638268','000000000000','1','1','2'),
            ('1097','عمر سعيد','1225527928','000000000000','1','1','2'),
            ('1098','عمرو خليفة','1009785353','000000000000','1','1','2'),
            ('1099','عمرو سمير','0000000000','000000000000','1','1','2'),
            ('1100','عمرو محمود','1223762937','000000000000','1','1','2'),
            ('1101','عمرو محمود الجوهري','1114525168','000000000000','1','1','2'),
            ('1102','عيادات الفور سيزون','1001590283','000000000000','1','1','2'),
            ('1103','غنيمي 2015','01018387187/01202980131','000000000000','1','1','2'),
            ('1104','فؤاد محمد النجار','1001706704','000000000000','1','1','2'),
            ('1105','كريم احمد','1224006583','000000000000','1','1','2'),
            ('1106','كريم الشرقاوي','1002387158','000000000000','1','1','2'),
            ('1107','كريم حسين','1111865171','000000000000','1','1','2'),
            ('1108','كريم غنة','1115619999','000000000000','1','1','2'),
            ('1109','كندة داهر','1012729088','000000000000','1','1','2'),
            ('1110','كيرلس رافت','1205487885','000000000000','1','1','2'),
            ('1111','محمد احمد خميس','0109 390 3891/0127 743 3362','000000000000','1','1','2'),
            ('1112','محمد الحلبي','1006238329','000000000000','1','1','2'),
            ('1113','محمد الخولي','1017626111','000000000000','1','1','2'),
            ('1114','محمد الدسوقي شاهين','1001495543','000000000000','1','1','2'),
            ('1115','محمد المرسي','1206412030','000000000000','1','1','2'),
            ('1116','محمد المقدم','1090312713','000000000000','1','1','2'),
            ('1117','محمد المنصوري','1272207585','000000000000','1','1','2'),
            ('1118','محمد إبراهيم','1122050696','000000000000','1','1','2'),
            ('1119','محمد أحمد المصري','1220372222','000000000000','1','1','2'),
            ('1120','محمد بلبع','1007534450','000000000000','1','1','2'),
            ('1121','محمد خليل','1001067460','000000000000','1','1','2'),
            ('1122','محمد خميس جمعة','1004985050','000000000000','1','1','2'),
            ('1123','محمد ذكي','1001817586','000000000000','1','1','2'),
            ('1125','محمد زكريا ابراهيم','1065178737','000000000000','1','1','2'),
            ('1126','محمد سعيد عشرى','01229616902 / 4808550','000000000000','1','1','2'),
            ('1127','محمد سمير عبد الحميد','1227593866','000000000000','1','1','2'),
            ('1128','محمد صلاح','1278863680','000000000000','1','1','2'),
            ('1130','محمد عبد الكريم الزوقة','1221324181','000000000000','1','1','2'),
            ('1131','محمد علاء 2016','01553353378/01210813068','000000000000','1','1','2'),
            ('1132','محمد علي','1279169398','000000000000','1','1','2'),
            ('1133','محمد عمارة','1007252877','000000000000','1','1','2'),
            ('1134','محمد عيسي','1229759583','000000000000','1','1','2'),
            ('1135','محمد فتحي بقوش','1066880273','000000000000','1','1','2'),
            ('1136','محمد فؤاد','1121132253/1063633313','000000000000','1','1','2'),
            ('1137','محمد مجدي عبد المنعم منسي','1002820343','000000000000','1','1','2'),
            ('1138','محمد ممدوح','1068055103','000000000000','1','1','2'),
            ('1139','محمود 2017','1273807059','000000000000','1','1','2'),
            ('1140','محمود الخطيب','1025386742','000000000000','1','1','2'),
            ('1141','محمود عماد','1224019808','000000000000','1','1','2'),
            ('1142','محمود مدحت','01003567957-01123452773','000000000000','1','1','2'),
            ('1143','محمود منصور','1094402221','000000000000','1','1','2'),
            ('1144','محمود وجيه','1020714036','000000000000','1','1','2'),
            ('1145','محمود ياسر صبري','1001742037','000000000000','1','1','2'),
            ('1146','مدحت محرم','01001247268/0155240240','000000000000','1','1','2'),
            ('1147','مروة الشامي','1099997558','000000000000','1','1','2'),
            ('1148','مروة سعد جودة','1222571192','000000000000','1','1','2'),
            ('1149','مساعدين د مصطفي علواني','1222369420','000000000000','1','1','2'),
            ('1150','مستشفي avc','1001075112','000000000000','1','1','2'),
            ('1151','مسعد انور حميدة','1223916428','000000000000','1','1','2'),
            ('1152','مصطفي صوابي','1098717554','000000000000','1','1','2'),
            ('1153','مصطفي محمود','1009877297','000000000000','1','1','2'),
            ('1154','معاذ 2015','01143207047/01066769111','000000000000','1','1','2'),
            ('1155','ممدوح سعد','1552595030','000000000000','1','1','2'),
            ('1156','منار مختار','1227586112','000000000000','1','1','2'),
            ('1157','منصور 2017','01022516851/01203052192','000000000000','1','1','2'),
            ('1158','منصور الليثي','1023766011','000000000000','1','1','2'),
            ('1159','مهاب الانصاري','1121198329','000000000000','1','1','2'),
            ('1160','مؤمن فوزي','1225367994/1099913853','000000000000','1','1','2'),
            ('1161','مينا اسامة','1060682922','000000000000','1','1','2'),
            ('1162','نادر مجدي','1282046240','000000000000','1','1','2'),
            ('1163','نبيل حسان','1099922602','000000000000','1','1','2'),
            ('1164','نديم حسين بيومي','1223718334','000000000000','1','1','2'),
            ('1165','نرمين السيد','1013984804','000000000000','1','1','2'),
            ('1166','نهي صلاح شاهين','12289815128','000000000000','1','1','2'),
            ('1167','نوران عزب','01144126688 / 01224136153','000000000000','1','1','2'),
            ('1168','هاني شعراوي','1095018889','000000000000','1','1','2'),
            ('1169','هبة نبيل','1224313943','000000000000','1','1','2'),
            ('1170','هشام جمال الامام','1228374262','000000000000','1','1','2'),
            ('1171','هلالي 2015','01061959020/01227499689','000000000000','1','1','2'),
            ('1172','هيثم المليجي','00000000000','000000000000','1','1','2'),
            ('1173','وائل البوهي','1222136977','000000000000','1','1','2'),
            ('1174','وحيد فتحي','1067406780','000000000000','1','1','2'),
            ('1175','وليد وحيد عتمان','1067777216','000000000000','1','1','2'),
            ('1176','ياسر عكاشة','1068631756','000000000000','1','1','2'),
            ('1177','ياسر يحيي','1224611011','000000000000','1','1','2'),
            ('1178','يوسف حسن أبو مندور','1006009499','000000000000','1','1','2'),
            ('1179','يوسف رمضان','1118581296','000000000000','1','1','2'),
            ('1180','يوسف مصري','1220374444','000000000000','1','1','2');
        ");

DB::insert("

INSERT INTO `doctor_info`(`user_id`, `specialty`, `description`) 
VALUES 
(1000,'36','اخصائي'),
(1001,NULL,'اخصائي'),
(1002,'1','اخصائي'),
(1003,NULL,'استشاري'),
(1004,'3',''),
(1005,'34','اخصائي'),
(1006,'36','استشاري'),
(1007,'36','اخصائي'),
(1008,NULL,'اخصائي'),
(1009,'36','اخصائي'),
(1010,NULL,'استشاري'),
(1011,'18','اخصائي'),
(1012,'27','أستاذ دكتور'),
(1013,NULL,'استشاري'), 
(1014,NULL,'اخصائي'),
(1015,'6','اخصائي'),
(1016,'19','اخصائي'),
(1017,NULL,'استشاري'),
(1018,'18','اخصائي'),
(1019,NULL,'استشاري'),
(1020,NULL,'اخصائي'),
(1021,'36','استشاري'),
(1022,'18','اخصائي'),
(1023,'18','استشاري'),
(1024,'36','اخصائي'),
(1025,'28','استشاري مدرس'),
(1026,'19',''),
(1027,'31','اخصائي'),
(1028,NULL,'استشاري'),
(1029,'36','اخصائي'),
(1030,'10','اخصائي'),
(1031,'36','اخصائي'),
(1032,'3','استشاري'),
(1033,'18','اخصائي'),
(1034,'20','رسم عصب و مدرس علاج طبيعي'),
(1035,'26','استشاري'),
(1036,'36','استشاري'),
(1037,'18','اخصائي'),
(1038,'34','اخصائي'),
(1039,'22','اخصائي'),
(1040,'38','استشاري'),
(1041,'29','اخصائي'),
(1042,'25','استشارى'),
(1043,'6','أخصائي'),
(1044,'19','مدرس'),
(1045,'24','استشاري'),
(1046,'40','أخصائي'),
(1047,'36','استشاري'),
(1048,'21','مدرس مساعد'),
(1049,'36','اخصائي'),
(1050,'36','استشاري'),
(1051,'33','أستاذ'),
(1052,'30','اخصائي'),
(1053,'36','استشاري'),
(1054,NULL,'استشاري'),
(1055,'18','استشاري'),
(1056,'31','استاذ مساعد'),
(1057,NULL,'اخصائي'),
(1058,NULL,'اخصائي'),
(1059,'3','استشاري'),
(1060,NULL,'استشاري'),
(1061,'12','اخصائي'),
(1062,'5','أخصائي'),
(1063,NULL,'اخصائي'),
(1064,'2','استشاري'),
(1065,'36','اخصائي'),
(1066,'7','استشاري'),
(1067,'28','اخصائي مميز'),
(1068,'36','اخصائي'),
(1069,'3',''),
(1070,'21','مدرس مساعد'),
(1071,NULL,'استشاري'),
(1072,'21','استشاري'),
(1073,'3',''),
(1074,'27','استشاري'),
(1075,'12','اخصائي'),
(1076,NULL,'اخصائي'),
(1077,'36','اخصائي'),
(1078,'18','اخصائي'),
(1079,NULL,'اخصائي'),
(1080,NULL,'اخصائي'),
(1081,'27','استشاري'),
(1082,'36','اخصائي'),
(1083,'36','اخصائي'),
(1084,'10','اخصائي'),
(1085,'32','اخصائي'),
(1086,'18','أستاذ'),
(1087,'18','استشاري'),
(1088,'2','أستاذ'),
(1089,NULL,'استشاري'),
(1090,'36','اخصائي'),
(1091,'26','أخصائي'),
(1092,'36','استشاري'),
(1093,'36','استشاري'),
(1094,'10','استشاري'),
(1095,'7','اخصائي'),
(1096,'7','أخصائي'),
(1097,'11','اخصائي'),
(1098,'10','اخصائي'),
(1099,NULL,'استشاري'),
(1100,'1','اخصائي'),
(1101,NULL,'استشاري'),
(1102,'27',''),
(1103,'36','اخصائي'),
(1104,'35','استشاري'),
(1105,NULL,'اخصائي'),
(1106,NULL,'اخصائي'),
(1107,'18','اخصائي'),
(1108,'36','اخصائي'),
(1109,NULL,'اخصائي'),
(1110,'23','اخصائي العالج الطبيعي ومنسق القسم'),
(1111,'3','استشاري'),
(1112,'15','أخصائي'),
(1113,'12','اخصائي'),
(1114,'2','استشاري'),
(1115,NULL,'استشاري'),
(1116,'36','اخصائي'),
(1117,'28','استشاري'),
(1118,'36','اخصائي'),
(1119,'6','استشاري'),
(1120,NULL,'اخصائي'),
(1121,'36','اخصائي'),
(1122,'18','أستشارى'),
(1123,'27','اخصائي'),
(1125,'36','اخصائي'),
(1126,'18','أخصائى'),
(1127,'32','اخصائي'),
(1128,'18','إستشاري'),
(1130,NULL,'اخصائي'),
(1131,'36','اخصائي'),
(1132,NULL,'اخصائي'),
(1133,'18','اخصائي'),
(1134,'37','اخصائي'),
(1135,'40','اخصائي'),
(1136,'6','أخصائي'),
(1137,'27','اخصائي'),
(1138,'10','أستشاري / مدرس'),
(1139,'36','اخصائي'),
(1140,'1','استشاري'),
(1141,NULL,'استشاري'),
(1142,NULL,'اخصائي'),
(1143,'18','اخصائي'),
(1144,'18','اخصائي'),
(1145,NULL,'استشاري'),
(1146,'3','استشاري'),
(1147,'18','استشاري'),
(1148,'24','أستاذ'),
(1149,'3','إستشاري'),
(1150,'28','اخصائين والاستشارين'),
(1151,'27','استشاري'),
(1152,NULL,'اخصائي'),
(1153,'3',''),
(1154,'36','اخصائي'),
(1155,NULL,'استشاري'),
(1156,'3',''),
(1157,'36','اخصائي'),
(1158,'39','أستشاري'),
(1159,'3',''),
(1160,'4','اخصائي'),
(1161,'18','اخصائي'),
(1162,'29','اخصائي'),
(1163,'22','استشاري'),
(1164,'27','استشاري'),
(1165,'2','أخصائي'),
(1166,'35','اخصائي'),
(1167,'18','أستاذ'),
(1168,'18','استشاري'),
(1169,'6','أستشاري'),
(1170,'2','استشاري'),
(1171,'36','اخصائي'),
(1172,NULL,'استشاري و استاذ مساعد'),
(1173,'18','استشاري'),
(1174,NULL,'اخصائي'),
(1175,'3',''),
(1176,'27','اخصائي'),
(1177,NULL,'استشاري'),
(1178,'28','استشاري'),
(1179,'28','أخصائي'),
(1180,'6','اخصائي');

");   
    }
}
