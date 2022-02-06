<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class GovernoratesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::insert("
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
        ");
    }
}
