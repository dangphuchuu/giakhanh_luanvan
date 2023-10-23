<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('users', function (Blueprint $table) {
            $table->increments('id');
            $table->string('lastname', 255);
            $table->string('firstname', 255);
            $table->string('username', 255);
            $table->string('password', 255);
            $table->string('email', 255)->unique()->nullable();
            $table->string('phone', 12)->unique()->nullable();
            $table->string('address', 255)->nullable();
            $table->string('district', 255)->nullable();
            $table->string('city', 255)->nullable();
            $table->boolean('status')->default(true);
            $table->bigInteger('point')->default(0);
            $table->boolean('email_verified')->default(false);
            $table->rememberToken();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('users');
    }
};