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

// default landing
Route::get('/landing', function () {
   return redirect('/landing/');
});

// Home
Route::get('/', 'HomeController@index')->name('home');

// Currency
Route::post('setcurrency-ajax', ['uses' => 'CurrencyController@ajaxSetCurrency'])->name('setcurrency-ajax');

// Tires
Route::get('/tires', ['uses' => 'TireController@List'])->name('tires-list');
Route::get('/tires/byVehicleType/{vehicleTypeId}', ['uses' => 'TireController@ListByVehicleType'])->name('tires-list-byVehicleType');
Route::get('/tires/byBrand/{brandId}', ['uses' => 'TireController@ListByBrand'])->name('tires-list-byBrand');
Route::get('/tire/{tireId}', ['uses' => 'TireController@Tire'])->name('tire-byId');

// Products
Route::get('/products', ['uses' => 'ProductController@List'])->name('products-list');
Route::get('/products/byCategoryId/{productCategoryId}', ['uses' => 'ProductController@ListByProductCategory'])->name('products-list-byCategoryId');

// StaticContent
Route::get('/static/sucursales', ['uses' => 'StaticContentController@BranchOffices'])->name('static-branchoffices');
Route::get('/static/aboutus', ['uses' => 'StaticContentController@AboutUs'])->name('static-aboutus');