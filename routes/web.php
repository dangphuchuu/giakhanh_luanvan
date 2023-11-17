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
    Route::get('/errors/404',function(){
        return view('errors.404');
    });
    Route::get('/', [WebController::class, 'index']);

    // !Authentication
    Route::get('/signin_signup', [WebController::class, 'signin_signup']);
    Route::post('/handle_login',[WebController::class, 'handle_login']);
    Route::post('/register',[WebController::class, 'register']);
    Route::get('/logout',[WebController::class, 'logout']);

    //TODO Products
    Route::get('/list',[WebController::class, 'list']);
    Route::get('/detail/{id}',[WebController::class, 'detail']);
    Route::get('/search',[WebController::class, 'search']);
    Route::get('/reviews',[WebController::class, 'reviews']);

    //! Categories
    Route::get('/category/{id}',[WebController::class, 'category']);
    Route::get('/subcategory/{id}',[WebController::class, 'subcategory']);
    Route::get('/brands/{id}',[WebController::class, 'brands']);

    //TODO Profile
    Route::get('/profile/',[WebController::class, 'profile']);
    Route::post('/profile',[WebController::class, 'editProfile']);
    Route::post('/imageProfile',[WebController::class, 'imageProfile']);
   
    //! Carts
    Route::get('/cart',[WebController::class, 'cart']);
    Route::post('/cart',[WebController::class, 'handle_cart']);
    Route::post('/updateCart',[WebController::class, 'update']);
    Route::delete('/deleteCart',[WebController::class, 'deleteCart']);
    Route::get('/checkout',[WebController::class, 'checkout']);
    Route::post('/checkout',[WebController::class, 'handle_checkout']);
    Route::get('/myOrder',[WebController::class, 'myOrder']);
    Route::get('/trackOrder',[WebController::class, 'trackOrder']);

});