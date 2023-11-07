<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\BannersController;
use App\Http\Controllers\BannersFeaturedController;
use App\Http\Controllers\BrandsController;
use App\Http\Controllers\CategoriesController;
use App\Http\Controllers\InfoController;
use App\Http\Controllers\ProductsController;
use App\Http\Controllers\SubCategoriesController;
use Illuminate\Support\Facades\Route;




    
Route::prefix('admin')->group(function(){
    Route::get('/login', [AdminController::class, 'login']);
    Route::post('/login', [AdminController::class, 'handle_login']);
    Route::get('/logout', [AdminController::class, 'logout']);
});
Route::prefix('admin')->middleware('admin','role:admin|staff')->group(function(){
    Route::get('/', [AdminController::class, 'index']);


    Route::prefix('categories')->group(function(){
        Route::get('/',[CategoriesController::class, 'index']);
        Route::post('/create',[CategoriesController::class, 'create']);
        Route::post('/edit/{id}',[CategoriesController::class, 'edit']);
        Route::get('/delete/{id}',[CategoriesController::class, 'destroy']);
        Route::get('/status',[CategoriesController::class, 'status']);

    });
    Route::prefix('subcategories')->group(function(){
        Route::get('/',[SubCategoriesController::class, 'index']);
        Route::post('/create',[SubCategoriesController::class, 'create']);
        Route::post('/edit/{id}',[SubCategoriesController::class, 'edit']);
        Route::get('/delete/{id}',[SubCategoriesController::class, 'destroy']);
        Route::get('/status',[SubCategoriesController::class, 'status']);
    });
    Route::prefix('brands')->group(function(){
        Route::get('/',[BrandsController::class, 'index']);
        Route::post('/create',[BrandsController::class, 'create']);
        Route::post('/edit/{id}',[BrandsController::class, 'edit']);
        Route::get('/delete/{id}',[BrandsController::class, 'destroy']);
        Route::get('/status',[BrandsController::class, 'status']);

    });
    Route::prefix('products')->group(function(){
        Route::get('/',[ProductsController::class, 'index']);
        Route::post('/create',[ProductsController::class, 'create']);
        Route::get('/edit/{id}',[ProductsController::class, 'edit_pages']);
        Route::post('/edit/{id}',[ProductsController::class, 'edit']);
        Route::get('/delete/{id}',[ProductsController::class, 'destroy']);
        Route::delete('/deleteimages/{id}',[ProductsController::class, 'deleteImages']);
        Route::get('/status',[ProductsController::class, 'status']);
        Route::get('/featured',[ProductsController::class, 'featured']);
        Route::get('/subcategory/{cat_id}',[ProductsController::class, 'getSubCategories']);
        Route::get('/subcategory_edit/{cat_id}',[ProductsController::class, 'getSubCategories_edit']);
    });

    Route::prefix('banners')->group(function(){
        Route::get('/',[BannersController::class, 'index']);
        Route::post('/create',[BannersController::class, 'create']);
        Route::post('/edit/{id}',[BannersController::class, 'edit']);
        Route::get('/delete/{id}',[BannersController::class, 'destroy']);
        Route::get('/status',[BannersController::class, 'status']);

    });
    Route::prefix('bannersfeatured')->group(function(){
        Route::get('/',[BannersFeaturedController::class, 'index']);
        Route::post('/create',[BannersFeaturedController::class, 'create']);
        Route::post('/edit/{id}',[BannersFeaturedController::class, 'edit']);
        Route::get('/delete/{id}',[BannersFeaturedController::class, 'destroy']);
        Route::get('/status',[BannersFeaturedController::class, 'status']);

    });
    Route::prefix('clients')->group(function(){
        Route::get('/',[AdminController::class, 'clients']);
        Route::get('/status',[AdminController::class, 'status_clients']);

    });
    Route::prefix('info')->group(function(){
        Route::get('/',[InfoController::class, 'index']);
        Route::post('/',[InfoController::class, 'info']);

    });
    
});
