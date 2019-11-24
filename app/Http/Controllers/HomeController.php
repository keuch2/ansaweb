<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\ProductCategory;
use App\Models\Profile;
use App\Models\Radius;
use App\Models\Promotion;
use App\Models\VehicleType;
use App\Models\Width;
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
        $radiuses = Radius::all();
        $widths = Width::all();
        $profiles = Profile::all();
        return view('home.home', compact('promotions','currencies', 'vehicleTypes','brands','productCategories','radiuses','widths','profiles'));

    }
}
