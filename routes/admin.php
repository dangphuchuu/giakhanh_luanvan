<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\CategoriesController;
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
    Route::prefix('products')->group(function(){
        Route::get('/',[ProductsController::class, 'index']);
        Route::post('/create',[ProductsController::class, 'create']);
        Route::post('/edit/{id}',[ProductsController::class, 'edit']);
        Route::get('/delete/{id}',[ProductsController::class, 'destroy']);

    });

});