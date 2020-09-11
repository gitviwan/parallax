<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();



Route::get('/home', 'HomeController@index')->name('home');

Route::group(['middleware' => ['auth']], function () {

    Route::get('/dashboard', function () {return view('dashboard.dash_body'); });

    Route::get('/insert_product', 'ProductController@insert_product');

    Route::post('/product_submit', 'ProductController@product_submit');

    Route::get('/view_product', 'ProductController@view_product');

    Route::get('/edit_product', 'ProductController@edit_product');

    Route::put('/edit_submit', 'ProductController@edit_submit');

    Route::delete('/delete_product', 'ProductController@delete_product');

});
