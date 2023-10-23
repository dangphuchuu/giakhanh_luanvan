<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\CategoriesController;
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

    });
    Route::get('/subcategories',[SubcategoriesController::class, 'index']);
    Route::get('/products',[CategoriesController::class, 'index']);

});