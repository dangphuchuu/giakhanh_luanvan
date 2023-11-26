<?php

namespace App\Http\Controllers;

use App\Models\Banners;
use App\Models\BannersFeatured;
use App\Models\Brands;
use App\Models\Categories;
use App\Models\Info;
use App\Models\Orders;
use App\Models\Orders_Detail;
use App\Models\Products;
use App\Models\Reviews;
use App\Models\Subcategories;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use CloudinaryLabs\CloudinaryLaravel\Facades\Cloudinary;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Mail;

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
            if(Cart::count()>0){
                toast(__("Login Successfully"),'success');
                return redirect('/checkout');
            }else{
                toast(__("Login Successfully"),'success');
                return redirect('/index');
            }
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
        Cart::instance()->destroy();
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
        $reviews = Reviews::where('products_id',$id)->orderBy('id','DESC')->get();
        return view('web.pages.products.detail',[
            'products'=>$products,
            'related'=>$related,
            'reviews'=>$reviews
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

    public function brands($id){
        $brands = Brands::find($id);
        $products = Products::where('brands_id',$id)->where('status',1)->orderBy('id', 'ASC')->Paginate(12);
        return view('web.pages.brands.index',[
            'brands'=>$brands,
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

    public function reviews(Request $request){
        if(Auth::check()){
            $validate = Validator::make($request->all(),[
                'rate' => 'required',
                'content'=>'required|min:8',
            ],[
                'rate.required'=>__("Please select number of stars."),
                'content.required'=>__("Please enter content."),
                'content.min'=>__("The content must be at least 8 characters.")
            ]);
    
            if($validate->fails()){
                return back()->with('toast_error', $validate->messages()->all()[0])->withInput();
            }
            $checkReview = Reviews::where(['users_id' => Auth::user()->id,'products_id'=>$request->products_id])->count();
            if($checkReview > 0){
                return redirect()->back()->with('toast_warning',__('You have already rated this product'));
            }else{
                $reviews = new Reviews([
                    'products_id'=> $request->products_id,
                    'users_id'=>Auth::user()->id,
                    'rate'=>$request->rate,
                    'content'=>$request->content
                ]);
                $reviews->save();
                return redirect()->back()->with('toast_success',__('Successful product reviews'));
            }
        }else{
            abort(404);
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
        $validate = Validator::make($request->all(),[
            'phone' => 'regex:/^([0-9\s\-\+\(\)]*)$/|min:10|max:12|nullable',
        ],[
            'phone.regex' => __("Phone numbers are from 0 to 9 and do not include characters"),
            'phone.min' => __("Phone number at least 10 characters"),
            'phone.max' => __("Phone number maximum 20 characters"),
        ]);
        $user = User::find(Auth::user()->id);
        $email = User::where('email', "=", $request->email)->first();
        $phone = User::where('phone', "=", $request->phone)->first();

        //email
        $token = Str::random(20);
        $to_email = $request->email;
        $link_verify = url('/verify-email?email=' . $to_email . '&token=' . $token);

        if ($phone && $user->phone != $phone->phone) {
            if (!isset($request->phone)) {
                return redirect()->back()->with('toast_error',__("the phone field is required"));
            }
            //            dd($user->phone);
            return redirect()->back()->with('toast_warning', __("The phone is already exists"));
        }
        if ($email && $user->email != $email->email) {
            if (!isset($request->email)) {
                return redirect()->back()->with('toast_error',__("the phone field is required"));
            }
            return redirect()->back()->with('toast_warning', __("the email is already exists"));
        }
        if($validate->fails()){
            return redirect()->back()->with('toast_error', $validate->messages()->all()[0])->withInput();
        }

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

        if ($user->isDirty('email')) //check value has changed
        {
            $user->email_verified = 0;
        }

        $user->save();
        if (isset($request->email) && $user['email_verified'] == 0) {
            Mail::send('web.pages.account.verify_account_mail', [
                'to_email' => $to_email,
                'link_verify' => $link_verify,
            ], function ($email) use ($to_email) {
                $email->subject(__("Activate your account ") . $to_email);
                $email->to($to_email);
            });
            return redirect()->back()->with('toast_success', __("Please check your mail to activated!"));
        }

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
        // dd($request->email);
        $quantity = $request->quantity;
        $products = Products::where('id',$id)->first();
        // dd($products);
        foreach($products->ProductsImage as $value){
            $img[] = $value->image;
        }
        // dd($img[0]);
        if($quantity <= 0){
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

        return redirect()->back()->with('toast_success',__("Order Successfully !"));
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
        $cart = Cart::instance();
        $cart->update($id,$qty);
        $sum = $cart->subtotal(0,',','.'); 
        $tax = $cart->tax(0,',','.');
        $total = $cart->total(0,',','.'); 
        return response()->json([
            'subtotal'=>$subtotal,
            'sum'=>$sum,
            'tax'=>$tax,
            'total'=>$total
        ],200);
            // $data = $request->all();
            // print_r($data);
            // Cart::instance(Auth::user()->id)->update($request->cartId);
            // return response();

       
    }

    public function deleteCart(Request $request){
        $id = $request->cartId;
        $cart = Cart::instance();
        $cart->remove($id);
        $sum = $cart->subtotal(0,',','.'); 
        $total = $cart->total(0,',','.'); 
        $tax = $cart->tax(0,',','.');
        return response()->json([
            'sum'=>$sum,
            'total'=>$total,
            'tax'=>$tax
        ],200);
        
    }

    public function checkout(){
        return view('web.pages.cart.checkout');
    }

    public function handle_checkout(Request $request){
        $credentials = Validator::make($request->all(),[
            'lastname' => 'required',
            'firstname' => 'required',
            'email' => 'required',
            'address' => 'required',
            'district' => 'required',
            'phone' => 'regex:/^([0-9\s\-\+\(\)]*)$/|min:10|max:12|required',
        ],
        [
            'lastname.required'=>__("the last name field is required"),
            'firstname.required'=>__("the first name field is required"),
            'email.required'=>__("the email field is required"),
            'address.required'=>__("the address field is required"),
            'district.required'=>__("the district field is required"),
            'phone.required'=>__("the phone field is required"),
            'phone.regex' => __("Phone numbers are from 0 to 9 and do not include characters"),
            'phone.min' => __("Phone number at least 10 characters"),
            'phone.max' => __("Phone number maximum 20 characters")
        ]);

        if($credentials->fails()){
            return back()->with('toast_error', $credentials->messages()->all()[0])->withInput();
        }
        if($request->city == null){
            return back()->with('toast_error',__('Please choose a city'));
        }
        $cart = Cart::instance();
        $user = Auth::user()->id;
        
        // $user->lastname = $request->lastname;
        // $user->firstname = $request->firstname;
        // $user->email = $request->email;
        // $user->phone = $request->phone;
        // $user->address = $request->address;
        // $user->district = $request->district;
        // $user->city = $request->city;
        // $user->save();
        $orders = new Orders([
            'users_id'=> $user,
            'lastname'=>$request->lastname,
            'firstname'=>$request->firstname,
            'email'=>$request->email,
            'phone'=>$request->phone,
            'address'=>$request->address,
            'district'=>$request->district,
            'city'=>$request->city,
            'content'=> $request->content,
            'tax'=> (int)preg_replace("/[,]+/", "", $cart->tax(0)),
            'subtotal'=> (int)preg_replace("/[,]+/", "", $cart->subtotal(0)),
            'total'=> (int)preg_replace("/[,]+/", "", $cart->total(0)),
            'lastname_sender'=>$request->lastname_sender,
            'firstname_sender'=>$request->firstname_sender,
            'phone_sender'=>$request->phone_sender
        ]);
        $orders->save();
        foreach($cart->content() as $carts){
            $orders->products()->attach($carts->id,['quantity'=>$carts->qty]);
            // $orders_detail = new Orders_Detail([
            //     'orders_id'=>$orders->id,
            //     'products_id'=> $carts->id,
            //     'quantity'=>$carts->qty
            // ]);
            // $orders_detail->save();
        }
        $email_cur = $request->email;
        $name = Auth::user()->firstname;
        // dd($cart->content());
        if (isset($request->email)) {
            Mail::send('web.pages.cart.cart_mail', [
                'name' => $name,
                'orders'=>$orders,
                'cart'=>$cart
            ], function ($email) use ($email_cur) {
                $email->subject(__("Shopping Cart Information"));
                $email->to($email_cur);
            });
        }
        $cart->destroy();
        return view('web.pages.cart.confirm');
    }

    public function myOrder(){
        if(Auth::check()){
        $orders = Orders::where('users_id',Auth::user()->id)->orderBy('id', 'DESC')->paginate(5);
            // dd($orders);
            return view('web.pages.account.my-order',[
                'orders'=>$orders
            ]);
        }else{
            abort(404);
        }
    }

    public function trackOrder(){
        if(Auth::check()){
        $products = Products::all()->where('status',1)->sortByDesc('created_at')->take(8);
            return view('web.pages.account.track-order',[
                'products'=>$products
            ]);
        }else{
            abort(404);
        }
    }

    public function verify_email(){
        $token = Str::random(20);
        $email = $_GET['email'];
        $user = User::where('email','=',$email)->first();

        if($user){
            $verify = User::find($user->id);
            $verify->email_verified = 1;
            $verify->remember_token = $token;
            $verify->save();
            if(Auth::check())
            {
                $name = Auth::user()->username;
                return redirect('/profile')->with('success',__('Activate for account ').$name.__(' successfully!'));
            }
            return redirect('/')->with('success',__("Activate email successfully!"));
        }
        else{
            return redirect('/')->with('warning',__("Please try again as the link has expired!"));
        }
    }
}
