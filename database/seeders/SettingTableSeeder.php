<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SettingTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('setting')->insert(array(
            [
             'nama_perusahaan' => 'MARKETPOS', 
             'alamat' => 'Jl. Citarum, Bandung',
             'telepon' => '08382212345',
             'logo' => 'logo.png',
             'kartu_member' => 'card.png',
             'diskon_member' => '10',
             'tipe_nota' => '0'
            ]
           ));
    }
}
