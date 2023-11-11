<?php

namespace App\Http\Controllers;

use App\Models\Banners;
use App\Models\BannersFeatured;
use App\Models\Brands;
use App\Models\Categories;
use App\Models\Info;
use App\Models\Products;
use App\Models\Subcategories;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use CloudinaryLabs\CloudinaryLaravel\Facades\Cloudinary;
use Gloudemans\Shoppingcart\Facades\Cart;

class WebController extends Controller
{
    public function __construct(){
        $categories = Categories::all()->where('status',1);
        $subcategories = Subcategories::all()->where('status',1);
        $info = Info::find(1);
        view()->share('categories',$categories);
        view()->share('subcategories',$subcategories);
        view()->share('info',$info);
    }
    public function index(){
        $products = Products::all()->where('status',1)->sortByDesc('created_at')->take(4);
        $brands = Brands::all()->where('status',1);
        $banners = Banners::all()->where('status',1);
        $bannersfeatured = BannersFeatured::all()->where('status',1)->take(3);
        $products_featured = Products::all()->where('status',1)->where('featured_product',1);
        $top_selling = Products::all()->where('status',1)->sortBy('created_at')->take(5);
        return view('web/pages/home/index',[
            'brands'=>$brands,
            'products' => $products,
            'banners'=>$banners,
            'bannersfeatured'=>$bannersfeatured,
            'products_featured'=>$products_featured,
            'top_selling'=>$top_selling
        ]);
    }


    // !Authentication
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
            'image'=>'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png',
            'password'=>Hash::make($request->password)
        ]);
        $user->save();
        $user->syncRoles('client');
        return redirect()->back()->with('toast_success',__("Sign Up Successfully"));
    }
    public function logout(){
        Auth::logout();
        return redirect('/signin_signup')->with('toast_success',__("Logout Successfully"));
    }
   
    
    //! Products
    public function list(){
        $products = Products::orderBy('id', 'DESC')->where('status',1)->paginate(8);
        return view('web.pages.products.list',[
            'products'=>$products
        ]);
    }

    public function detail($id){
        $products = Products::find($id);
        if(!$products){
            abort(404);
        }
        $related = Products::where('sub_id',$products->sub_id)->take(4)->get();
        return view('web.pages.products.detail',[
            'products'=>$products,
            'related'=>$related
        ]);
    }

    public function category($id){
        $category = Categories::find($id);
        $products = Products::where('cat_id',$id)->where('status',1)->orderBy('id', 'ASC')->Paginate(12);
        return view('web.pages.categories.index',[
            'category'=>$category,
            'products'=>$products
        ]);
    }

    public function subcategory($id){
        $subcategory = Subcategories::find($id);
        $products = Products::where('sub_id',$id)->where('status',1)->orderBy('id', 'ASC')->Paginate(12);
        return view('web.pages.subcategories.index',[
            'subcategory'=>$subcategory,
            'products'=>$products
        ]);
    }

    public function search(Request $request){
        if($request->search){
            $products = Products::where('status',1)->where('name','LIKE','%' . $request->search . '%')->latest()->paginate(8);
            return view('web.pages.products.list',[
                'products'=>$products
            ]);
        }else{
            return redirect()->back()->with('toast_error',__("Empty Search"));
        }
    }


    //TODO Profile
    public function profile(){
        $user = Auth::user();
        if(Auth::check()){
            return view('web.pages.account.profile',[
                'user'=>$user
            ]);
        }
        abort(404);
    }

    public function editProfile(Request $request){
        $user = User::find(Auth::user()->id);
        if($request->changepassword == 'on'){
            $validate = Validator::make($request->all(),[
                'password' => 'required',
                'repassword'=>'required|same:password',
            ],[
                'password.required'=>__("the passwords field is required"),
                'repassword.required'=>__("the repassword field is required"),
                'repassword.same'=>__("the repassword is incorrect")
            ]);
    
            if($validate->fails()){
                return back()->with('toast_error', $validate->messages()->all()[0])->withInput();
            }
            $request['password'] = Hash::make($request->password);
            $user->password = $request['password'];
        }
        $user->firstname = $request->firstname;
        $user->lastname = $request->lastname;
        $user->email = $request->email;
        $user->phone = $request->phone;
        $user->address = $request->address;
        $user->district = $request->district;
        $user->city = $request->city;
        $user->save();
        return redirect()->back()->with('toast_success',__("Update successfully"));
    }

    public function imageProfile(Request $request){
        
        $user = User::find(Auth::user()->id);
        if ($request->hasFile('Image')) {
            $img = $request->file('Image');
            if($user->image !=''){
                Cloudinary::destroy($user->image);
            }
            $cloud = Cloudinary::upload($img->getRealPath(), [
                'folder' => 'user',
                'format' => 'jpg',

            ])->getPublicId();
            $user->image= $cloud;
        }
        $user->save();
        return redirect()->back()->with('toast_success',__("Update successfully"));
    }

    //! Cart
    public function cart(){
        return view('web.pages.cart.index');
    }

    public function handle_cart(Request $request){
        $id = $request->products_id;
        $quantity = $request->quantity;
        $products = Products::where('id',$id)->first();
        foreach($products->ProductsImage as $value){
            $img[] = $value->image;
        }
        // dd($img[0]);
        if($quantity == 0){
            return redirect()->back()->with('toast_warning',__("Please choose product at least 1 !"));
        }
        Cart::add([
            'id'=>$id,
            'name'=> $products->name,
            'qty'=> $request->quantity,
            'price'=> $products->price,
            'options'=>[
                'price_new'=>$products->price_new,
                'image'=>  $img[0],
            ]
        ]);
        // Cart::destroy();
        // dd(Cart::content());
        return redirect('/cart')->with('toast_success',__("Order Successfully !"));
    }

    public function update(Request $request){
        $qty = $request->qty;
        $id = $request->cartId;
        $cart = Cart::get($id);
        if($cart->options->price_new){
            $subtotal = $cart->options->price_new*$qty;
        }else{
            $subtotal = $cart->price*$qty;
        }
        Cart::update($id,$qty);
        $sum = Cart::subtotal(0,',','.'); 
        $total = Cart::subtotal(0,',','.'); 
        $totalQuantity = Cart::count();
        return response()->json([
            'subtotal'=>$subtotal,
            'sum'=>$sum,
            'total'=>$total,
            'totalQuantity'=>$totalQuantity
        ],200);
            // $data = $request->all();
            // print_r($data);
            // Cart::update($request->cartId);
            // return response();

       
    }

    public function deleteCart(Request $request){
        $id = $request->cartId;
        Cart::remove($id);
        $sum = Cart::subtotal(0,',','.'); 
        $total = Cart::subtotal(0,',','.'); 
        $totalQuantity = Cart::count();
        return response()->json([
            'sum'=>$sum,
            'total'=>$total,
            'totalQuantity'=>$totalQuantity
        ],200);
        
    }
}
