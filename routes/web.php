<?php
use App\Http\Controllers\WebController;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Session;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('lang',function(){
    $language = Session("language",config("app.locale"));
    if($language == "en") {
        $language = "vi";
    }else
    {
        $language = "en";
    }
    Session::put('language',$language);
    return redirect()->back();
})->name("lang");

Route::middleware('language')->group(function(){
    require 'admin.php';
    Route::get('/', [WebController::class, 'index']);
    // Route::prefix('/')->middleware()->group(function(){

    // });

});