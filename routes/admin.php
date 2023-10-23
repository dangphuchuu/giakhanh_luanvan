<?php

use App\Http\Controllers\AdminController;
use Illuminate\Support\Facades\Route;

Route::prefix('admin')->group(function(){
    Route::get('/', [AdminController::class, 'index']);
    Route::get('/login', [AdminController::class, 'login']);
    Route::post('/login', [AdminController::class, 'handle_login']);
    Route::get('/logout', [AdminController::class, 'logout']);
});
