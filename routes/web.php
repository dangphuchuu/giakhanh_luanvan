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
    Route::get('/signin_signup', [WebController::class, 'signin_signup']);
    Route::post('/handle_login',[WebController::class, 'handle_login']);
    Route::post('/register',[WebController::class, 'register']);
    Route::get('/logout',[WebController::class, 'logout']);
    Route::get('/list-grid',[WebController::class, 'list_grid']);
    Route::get('/search',[WebController::class, 'search']);
});