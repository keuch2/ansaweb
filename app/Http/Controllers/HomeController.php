<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\ProductCategory;
use App\Models\Promotion;
use App\Models\VehicleType;
use Illuminate\Http\Request;
use Session;

class HomeController extends Controller
{
    public function index(Request $request)
    {
        $currencies = \Config::get('currency.currencies');
        $vehicleTypes = VehicleType::all();
        $brands = Brand::all();
        $productCategories = ProductCategory::all();


        $promotions = Promotion::orderBy('id', 'DESC')->take(20)->get();

        return view('home.home', ['data' => null,
                                        'currencies' => $currencies,
                                        'vehicleTypes' => $vehicleTypes,
                                        'brands' => $brands,
                                        'productCategories' => $productCategories,
                                        'promotions' => $promotions
            ]);
    }
}
