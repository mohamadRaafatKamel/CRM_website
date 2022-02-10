<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DocInfoTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('doctor_info')->insert([
            'id'=>'100',
        ]);
        DB::table('doctor_info')->where('id', '100')->update(array('id' => '0'));
    }
}
