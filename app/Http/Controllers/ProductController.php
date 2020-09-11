<?php

namespace App\Http\Controllers;

use App\Category;
use App\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use function PHPSTORM_META\elementType;

class ProductController extends Controller
{

//    Insert new product
    public function insert_product(){
        $categories = Category::all();
        return view('insert_product')->with('categories',$categories);
    }

    public function product_submit(Request $request){

        $request->validate( [
            'product' => 'required|string|unique:products,product_name',
            'category' => 'required|string',

        ],[
            'product.unique' => 'The entered Product already exists'
        ]);

        $product = new Product;

        $product->product_name = $request->product;
        $product->category_id = $request->category;

        $product->save();

        return redirect()->back()->with('message', 'Successful...');
    }
//    View all Products
    public function view_product(){
        $products = DB::table('products')
            ->join('categories','categories.id','=','products.category_id')
            ->select('products.id','product_name','category_name')
            ->get();

        return view('view_product')->with('products',$products);
    }
//    Edit product
    public function edit_product(Request $request){
        $categories = Category::all();
        $product = DB::table('products')
            ->join('categories','categories.id','=','products.category_id')
            ->where('products.id',$request->id)
            ->select('products.id','product_name','category_id','category_name')
            ->first();

        return view('edit_product',['product'=>$product,'categories'=>$categories]);
    }

    public function edit_submit(Request $request){
        $request->validate( [
            'product' => 'required|string',
            'category' => 'required|string',

        ]);

        $product = Product::find($request->id);

        $product->product_name = $request->product;
        $product->category_id = $request->category;
        $product->update();

        return redirect('/view_product')->with('message', 'Update Successful...');

    }
//    Delete product
    public function delete_product(Request $request){

        $product = Product::find($request->id);

        $product->delete();

        return redirect()->back()->with('message', 'Delete Successful...');
    }
}
