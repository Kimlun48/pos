<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use Illuminate\Support\Facades\DB;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert(array(
            [
             'name' => 'asep1', 
             'email' => 'asep1@gmail.com',
             'password' => bcrypt('11223344'),
             'foto' => 'user.png',
             'level' => 1
            ],
            [
             'name' => 'safa1', 
             'email' => 'safa1@gmail.com',
             'password' => bcrypt('11223344'),
             'foto' => 'user.png',
             'level' => 2
            ]
          ));
    }
}
