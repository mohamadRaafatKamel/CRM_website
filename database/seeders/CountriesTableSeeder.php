<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CountriesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::insert("
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
        ");
    }
}