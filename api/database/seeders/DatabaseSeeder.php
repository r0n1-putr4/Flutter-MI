<?php

namespace Database\Seeders;

use App\Models\Article;
use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // $this->call('UsersTableSeeder');

        User::create([
            'username' => 'admin',
            'email' => 'a@b.com',
            'password' => md5('123456'), // password       
            'fullname' => 'Admin',
        ]);

        Article::create([
            'user_id' => 1,
            'judul' => 'Selamat Datang',
            'isi' => 'Selamat Datang di Blogku',
        ]);
    }

    
}
