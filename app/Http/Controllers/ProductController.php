<?php

namespace App\Http\Controllers;

use App\Brand;
use App\Category;
use App\Product;
use Image;
use Illuminate\Http\Request;
use DB;

class ProductController extends Controller
{
    public function index(){
       $categories = Category::where('publication_status',1)->get();
       $brands = Brand::where('publication_status',1)->get();

        return view('admin.product.add-product',[
            'categories'=>$categories,
            'brands'=>$brands
            ]);
    }
    protected function productInfoValidate(Request $request){
            $this->validate($request,[
                'product_name' => 'required',
                'product_price' => 'required',
                'product_quantity' => 'required'
            ]);
    }
    protected function productImageUpload(Request $request){

        $productImage = $request->file('product_image');
        //$productImage = $request->product_image;
        //$imageName = $productImage->getClientOriginalName();
        //$filetype = $productImage->getClientOriginalExtension();
       // $imageName = $request->product_name.'.'.$filetype;
        $imageName = $productImage->getClientOriginalName();
        $directory = 'product-images/';
        $imageUrl = $directory.$imageName;
        //$productImage->move($directory,$imageName);
        Image::make($productImage)->resize(300,400)->save($imageUrl);
        return $imageUrl;
    }
    protected function saveProductBasicInfo($request,$imageUrl){
        $product = new Product();
        $product->category_id = $request->category_id;
        $product->brand_id = $request->brand_id;
        $product->product_name = $request->product_name;
        $product->product_price = $request->product_price;
        $product->product_quantity = $request->product_quantity;
        $product->product_short_description = $request->product_short_description;
        $product->product_long_description = $request->product_long_description;
        $product->product_image = $imageUrl;
        $product->publication_status = $request->publication_status;
        $product->save();
    }
    public function saveProductInfo(Request $request){

        $this->productInfoValidate($request);
        $imageUrl = $this->productImageUpload($request);
        $this->saveProductBasicInfo($request,$imageUrl);

        return redirect('/product/add')->with('message','Prouduct info save successfully.');
    }
    public function manageProductInfo(){
       $products = DB::table('products')
                    ->join('categories','products.category_id','=','categories.id')
                    ->join('brands','products.brand_id','=','brands.id')
                    ->select('products.*','categories.category_name','brands.brand_name')
                    ->get();

        return view('admin.product.manage-product',['products'=>$products]);
    }
    public function editProductInfo($id){
        $product = Product::find($id);
        $categories = Category::where('publication_status',1)->get();
        $brands = Brand::where('publication_status',1)->get();

        return view('admin.product.edit-product',[
            'product'=>$product,
            'categories'=>$categories,
            'brands'=>$brands
        ]);
    }
    public function ProductBasicUpdate($product,$request,$imageUrl=null){
        $product->category_id = $request->category_id;
        $product->brand_id = $request->brand_id;
        $product->product_name = $request->product_name;
        $product->product_price = $request->product_price;
        $product->product_quantity = $request->product_quantity;
        $product->product_short_description = $request->product_short_description;
        $product->product_long_description = $request->product_long_description;
        if($imageUrl){
            $product->product_image = $imageUrl;
        }
        $product->publication_status = $request->publication_status;
        $product->save();
    }
    public function updateProductInfo(Request $request){
        $productImage = $request->file('product_image');

        $product = Product::find($request->id);

        if ($productImage){
                unlink($product->product_image);
               $imageUrl = $this->productImageUpload($request);
               $this->ProductBasicUpdate($product,$request,$imageUrl);
        }else{
            $this->ProductBasicUpdate($product,$request);
        }
        return redirect('/product/manage')->with('message','Product info update successfully.');

    }
}
