<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Illuminate\Support\Facades\DB;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        DB::table('infos')->insert([
            'logo'=>'web_assets/img/logo_black.svg',
            'name'=>'Gkcomputer',
            'phone'=>'0123456789',
            'email'=>'Gkcomputer@gmail.com',
            'facebook'=>'https://www.facebook.com/khanhLotuss',
            'twitter'=>'http://www.twitter.com',
            'youtube'=>'http://www.youtube.com',
            'address'=>'180 Cao Lỗ',
            'worktime'=>'7:00 - 21:00',
            'copyright'=>'GkComputer'
        ]);
        Role::create(['name' => 'admin']);
        Role::create(['name' => 'staff']);
        Role::create(['name' => 'client']);
        DB::table('users')->insert([
            'lastname' => 'Khách trực tiếp',
            'firstname' => 'Khách trực tiếp',
            'username' => 'khach',
            'password' => Hash::make('1'),
            'email'=>null,
            'phone' => 'null',
            'email_verified'=> 1,
            'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
            'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
        ]);
        DB::table('users')->insert([
            'lastname' => 'Nguyễn',
            'firstname' => 'Gia Khánh',
            'username' => 'admin',
            'password' => Hash::make('1'),
            'email'=>'admin@gmail.com',
            'phone' => '123456',
            'email_verified'=> 1,
            'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
            'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
        ]);
        
        DB::table('users')->insert([
            'lastname' => 'Nguyễn',
            'firstname' => 'Gia Khánh',
            'username' => 'giakhanh',
            'password' => Hash::make('1'),
            'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
            'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
        ]);
       
        $user = User::find(2);
        $user->assignRole('admin');

        $user2 = User::find(3);
        $user2->assignRole('client');
    }
}
