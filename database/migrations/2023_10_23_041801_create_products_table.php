<?php

use App\Models\Brands;
use App\Models\Categories;
use App\Models\Subcategories;
use App\Models\User;
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
        Schema::create('products', function (Blueprint $table) {
            $table->increments('id');
            $table->foreignIdFor(Categories::class,'cat_id');
            $table->foreignIdFor(User::class,'users_id');
            $table->foreignIdFor(Brands::class,'brands_id');
            $table->foreignIdFor(Subcategories::class, 'sub_id');
            $table->string('name');
            $table->string('image');
            $table->string('youtube_path')->nullable();
            $table->float('price',0)->nullable();
            $table->float('price_new',0)->nullable();    
            $table->longtext('content')->nullable();
            $table->boolean('featured_product')->default(false);
            $table->boolean('status')->default(true);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
    }
};
