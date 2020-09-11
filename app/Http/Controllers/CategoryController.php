<?php

namespace App\Http\Controllers;

use App\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
//    Add Category
    public  function insert_category(Request $request){
//        Check validations
        $request->validate( [
            'category_name' => 'required|string|max:191|unique:categories,category_name',

        ],[
            'category_name.unique' => 'The entered category already exists'
        ]);

        $category = new Category;

        $category->category_name = $request->category_name;
        $category->save();

        if ($category->save()){
            return ['success'=>$category];
        }else{
            return ['success'=>'Operation Failed'];
        }
    }
}
