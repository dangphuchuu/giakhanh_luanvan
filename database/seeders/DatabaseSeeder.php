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
            'logo' => 'web_assets/img/logo_black.svg',
            'name' => 'PHComputer',
            'phone' => '0123456789',
            'email' => 'PHComputer@gmail.com',
            'facebook' => 'https://www.facebook.com/',
            'twitter' => 'http://www.twitter.com',
            'youtube' => 'http://www.youtube.com',
            'address' => '',
            'worktime' => '7:00 - 21:00',
            'copyright' => 'PHComputer'
        ]);
        Role::create(['name' => 'admin']);
        Role::create(['name' => 'staff']);
        Role::create(['name' => 'client']);
        DB::table('users')->insert([
            'lastname' => 'test',
            'firstname' => 'test',
            'username' => 'admin',
            'password' => Hash::make('1'),
            'email' => 'admin@gmail.com',
            'phone' => '123456',
            'email_verified' => 1,
            'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
            'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
        ]);

        DB::table('users')->insert([
            'lastname' => 'test1',
            'firstname' => 'test1',
            'username' => 'test1',
            'password' => Hash::make('1'),
            'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
            'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
        ]);

        $user = User::find(1);
        $user->assignRole('admin');

        $user2 = User::find(2);
        $user2->assignRole('client');

        Permission::create(['name' => 'categories']);
        Permission::create(['name' => 'brands']);
        Permission::create(['name' => 'products']);
        Permission::create(['name' => 'clients']);
        Permission::create(['name' => 'discounts']);
        Permission::create(['name' => 'orders']);
        // $user = User::find(2);
        // $permission = Permission::all();
        // $user->givePermissionTo($permission);
    }
}
