<?php

namespace App\Http\Controllers;

use App\Models\Banners;
use App\Models\BannersFeatured;
use App\Models\Brands;
use App\Models\Categories;
use App\Models\Products;
use App\Models\Subcategories;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
class WebController extends Controller
{
    public function __construct(){
        $categories = Categories::all()->where('status',1);
        $subcategories = Subcategories::all()->where('status',1);
        view()->share('categories',$categories);
        view()->share('subcategories',$subcategories);
    }
    public function index()
    {
        $products = Products::all()->where('status',1)->sortByDesc('created_at')->take(4);
        $brands = Brands::all()->where('status',1);
        $banners = Banners::all()->where('status',1);
        $bannersfeatured = BannersFeatured::all()->where('status',1)->take(3);
        $products_featured = Products::all()->where('status',1)->where('featured_product',1);
        $top_selling = Products::all()->where('status',1)->sortBy('created_at')->take(8);
        return view('web/pages/home/index',[
            'brands'=>$brands,
            'products' => $products,
            'banners'=>$banners,
            'bannersfeatured'=>$bannersfeatured,
            'products_featured'=>$products_featured,
            'top_selling'=>$top_selling
        ]);
    }
    public function signin_signup(){
        return view('web/common/signin_signup');
    }
    public function handle_login(Request $request){
        $credentials = Validator::make($request->all(),[
            'username' => 'required',
            'password' => 'required',
        ],
        [
            'username.required'=>__("the username field is required"),
            'password.required'=>__("the passwords field is required")
        ]);

        if($credentials->fails()){
            return back()->with('toast_error', $credentials->messages()->all()[0])->withInput();
        }

        $username = Auth::attempt(['username' => $request['username'], 'password' => $request['password']]);
        $email = Auth::attempt(['email' => $request['username'], 'password' => $request['password']]);
        if($username || $email)
        {
            if(Auth::user()->hasRole('admin'))
            {
                Auth::logout();
                return redirect()->back()->with('toast_error',__("Only clients have access"));
            }
            if($request->has('rememberme')){
                session(['username_client'=>$request->username]);
                session(['password_client'=>$request->password]);
            }else{
                session()->forget('username_client');
                session()->forget('password_client');
            }
                toast(__("Login Successfully"),'success');
                return redirect('/');
        }else{
            return redirect()->back()->with('toast_error',__("Wrong username or password. Please try again"));

        }
    }
    public function register(Request $request){
         $credentials = Validator::make($request->all(),[
             'username' => 'required|min:4|max:20|unique:users',
             'password' => 'required',
             'repassword'=>'required|same:password',
             'email'=>'required|unique:users',
             'firstname'=>'required',
            'lastname'=>'required',
        ],
        [
            'username.required'=>__("the username field is required"),
            'password.required'=>__("the passwords field is required"),
            'lastname.required'=>__("the last name field is required"),
            'firstname.required'=>__("the first name field is required"),
            'username.unique'=>__("the username is already exists"),
            'username.min'=>__("The username must be at least 4 characters"),
            'username.max'=>__("The username maximum 20 characters"),
            'email.required'=>__("the email field is required"),
            'email.unique'=>__("the email is already exists"),
            'repassword.required'=>__("the repassword field is required"),
            'repassword.same'=>__("the repassword is incorrect")
        ]);
        if($credentials->fails()){
            return back()->with('toast_error', $credentials->messages()->all()[0])->withInput();
        }
        $user = new User([
            'lastname'=>$request->lastname,
            'firstname'=>$request->firstname,
            'username'=>$request->username,
            'email'=>$request->email,
            'image'=>'avatar',
            'password'=>Hash::make($request->password)
        ]);
        $user->save();
        $user->syncRoles('client');
        return redirect()->back()->with('toast_success',__("Sign Up Successfully"));
    }
    public function logout(){
        Auth::logout();
        return redirect()->back()->with('toast_success',__("Logout Successfully"));
    }
    public function list_grid(){
        $products = Products::all()->where('status',1)->take(8);
        return view('web.pages.products.list_grid',[
            'products'=>$products
        ]);
    }

}
