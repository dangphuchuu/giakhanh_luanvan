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
        Schema::create('orders', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('users_id');
            $table->string('lastname', 255);
            $table->string('firstname', 255);
            $table->string('email', 255)->unique()->nullable();
            $table->string('phone', 12)->unique()->nullable();
            $table->string('address', 255)->nullable();
            $table->string('district', 255)->nullable();
            $table->string('city', 255)->nullable();
            $table->longtext('content')->nullable();
            $table->integer('tax');
            $table->integer('subtotal');
            $table->integer('total');
            $table->integer('status')->default(1);
            $table->timestamps();
            $table->foreign('users_id')->references('id')->on('users')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('orders');
    }
};
