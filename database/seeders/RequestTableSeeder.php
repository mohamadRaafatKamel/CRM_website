<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class RequestTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('request')->insert([
            'id'=>'100',
        ]);
        DB::table('request')->where('id', '100')->update(array('id' => '0'));
    }
}
