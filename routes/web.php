<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*Route::get('/', function () {
    return view('welcome');
});*/
/*Route:get('/','HomeController@home');*/
/*Route::get('/',[
    'uses'=>'HomeController@home',
    'ase'=>'/'
]);*/
Route::get('/',[
    'uses'=> 'NewShopController@index',
    'as' => '/'
]);
Route::get('/category-product/{id}',[
    'uses'=>'NewShopController@categoryProduct',
    'as'=>'category-product'
]);
Route::get('/mail-us',[
    'uses'=>'NewShopController@mailUs',
    'as'=>'mail-us'
]);

Auth::routes();


Route::get('/dashboard', 'HomeController@index')->name('home');


/*category Inof*/
Route::get('/category/add', [
    'uses'=>'CategoryController@index',
    'as'=>'add-category'
]);

Route::post('/category/save',[
    'uses'=>'CategoryController@saveCategory',
    'as'=>'new-category'
]);
Route::get('/category/manage',[
    'uses'=>'CategoryController@manageCategoryInfo',
    'as'=>'manage-category'
]);
Route::get('/category/unpublished/{id}',[
    'uses'=>'CategoryController@unpublishedCategoryInfo',
    'as'=>'unpublished-category'
]);
Route::get('/category/published/{id}',[
    'uses'=>'CategoryController@publishedCategoryInfo',
    'as'=>'published-category'
]);
Route::get('/category/edit/{id}',[
    'uses'=>'CategoryController@editCategoryInfo',
    'as'=>'edit-category'
]);
Route::post('/category/update',[
    'uses'=>'CategoryController@updateCategoryInfo',
    'as'=>'update-category'
]);
Route::get('/category/delete',[
    'uses'=>'CategoryController@deleteCategoryInfo',
    'as'=>'delete-category'
]);

//Brand Info
Route::get('/brand/add',[
    'uses'=>'BrandController@index',
    'as'=>'add-brand'
]);
Route::post('/brand/save',[
    'uses'=>'BrandController@saveBrandInfo',
    'as'=>'new-brand'
]);
Route::get('/brand/manage',[
    'uses'=>'BrandController@manageBrandInfo',
    'as'=>'manage-brand'
]);
Route::get('brand/unpublished/{id}',[
    'uses'=>'BrandController@unpublishedBrandInfo',
    'as'=>'unpublished-brand'
]);
Route::get('/brand/published/{id}',[
    'uses'=>'BrandController@publishedBrandInfo',
    'as'=>'published-brand'
]);
Route::get('/brand/edit/{id}',[
    'uses'=>'BrandController@editBrandInfo',
    'as'=>'edit-brand'
]);
Route::post('/brand/update',[
    'uses'=>'BrandController@updateBrandInfo',
    'as'=>'update-brand'
]);
Route::get('brand/delete/{id}',[
    'uses'=>'BrandController@deleteBrandInfo',
    'as'=>'delete-brand'
]);

    //Product Info
Route::get('/product/add',[
    'uses'=>'ProductController@index',
    'as'=>'add-product'
]);
Route::post('/product/save',[
    'uses'=>'ProductController@saveProductInfo',
    'as'=>'new-product'
]);
Route::get('/product/manage',[
    'uses'=>'ProductController@manageProductInfo',
    'as'=>'manage-product'
]);
Route::get('/product/edit/{id}',[
    'uses'=>'ProductController@editProductInfo',
    'as'=>'edit-product'
]);
Route::post('/product/update',[
    'uses'=>'ProductController@updateProductInfo',
    'as'=>'update-product'
]);

//front end
Route::get('/product-details/{product_id}/{name}',[
    'uses'=>'NewShopController@productDetails',
    'as'=>'product-details'
]);


//Add To Cart

Route::post('/cart/add',[
    'uses'=>'CartController@addToCart',
    'as'=>'add-to-cart'
]);
Route::get('/cart/show',[
    'uses'=>'CartController@showCart',
    'as'=>'show-cart'
]);
Route::get('/row/delete/{id}',[
    'uses'=>'CartController@deleteCart',
    'as'=>'delete-cart-item'
]);
Route::post('/row/upade-cart',[
    'uses'=>'CartController@updateCart',
    'as'=>'update-cart'
]);
//Checkout /Customer Signup
Route::get('/checkout',[
    'uses'=>'CheckoutController@index',
    'as'=>'checkout'
]);
//customer registration
Route::post('/customer/registration',[
    'uses'=>'CheckoutController@customerSignUp',
    'as'=>'customer-sign-up'

]);
//customer login
Route::post('/checkout/customer-login',[
    'uses'=>'CheckoutController@customerLoginCheck',
    'as'=>'customer-login'
]);
//customer logout
Route::post('/checkout/customer-logout',[
    'uses'=>'CheckoutController@customerLogout',
    'as'=>'customer-logout'
]);

//new customer login
Route::get('/checkout/new-customer-login',[
    'uses'=>'CheckoutController@newCustomerLogin',
    'as'=>'new-customer-login'
]);

Route::get('/checkout/shipping',[
    'uses'=>'CheckoutController@shippingForm',
    'as'=>'checkout-shipping'

]);


//save shipping info
Route::post('/shipping/save',[
    'uses'=>'CheckoutController@saveShippingInfo',
    'as'=>'new-shipping'

]);
//payment
Route::get('/checkout/payment',[
    'uses'=>'CheckoutController@paymentForm',
    'as'=>'checkout-payment'

]);
Route::post('/checkout/order',[
    'uses'=>'CheckoutController@newOrder',
    'as'=>'new-order'
]);
Route::get('/complete/order',[
    'uses'=>'CheckoutController@completeOrder',
    'as'=>'complete-order'
]);

//manage order
//Middle Ware
Route::group(['middleware'=>'Newshop'],function (){
    Route::get('/order/manage-order',[
        'uses'=>'OrderController@manageOrderInfo',
        'as'=>'manage-order',
    ]);

    Route::get('/order/view-order-detail/{id}',[
        'uses'=>'OrderController@viewOrderDetail',
        'as'=>'view-order-detail'
    ]);
    Route::get('/order/view-order-invoice/{id}',[
        'uses'=>'OrderController@viewOrderInvoice',
        'as'=>'view-order-invoice'
    ]);Route::get('/order/download-invoice/{id}',[
        'uses'=>'OrderController@downloadInvoice',
        'as'=>'download-invoice'
    ]);
});
Route::get('/ajax-email-check/{email}',[
    'uses'=>'CheckoutController@ajaxEmailCheck',
    'as'=>'ajax-email-check'

]);