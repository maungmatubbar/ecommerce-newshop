<?php

namespace App\Http\Controllers;

use App\Brand;
use App\Category;
use App\Product;
use Illuminate\Http\Request;

class NewShopController extends Controller
{
    public function index(){
       $newProducts = Product::where('publication_status',1)
                                        ->orderBy('id','DESC')
                                        //->skip(2)
                                        ->take(8)
                                        ->get();
        return view('front-end.home.home',[
            'newProducts'=>$newProducts
        ]);//folder/folder/fileName
    }

    public function categoryProduct($id){
        $categoryProducts = Product::where('publication_status',1)
                                    ->where('category_id',$id)
                                    ->get();
        return view('front-end.category.category-content',['categoryProducts'=>$categoryProducts]);
    }
    public function mailUs(){
        return view('front-end.mail.mail-us-content');
    }
    public function productDetails($id){
        $product = Product::find($id);
        return view('front-end.product.product-details',['product'=>$product]);
    }

}
