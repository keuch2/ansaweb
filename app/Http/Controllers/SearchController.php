<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\ProductCategory;
use App\Models\Radius;
use App\Models\Tire;
use App\Models\VehicleType;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    public function getSearch(Request $request)
    {
        $currencies = \Config::get('currency.currencies');
        $vehicleTypes = VehicleType::all();
        $brands = Brand::all();
        $productCategories = ProductCategory::all();

        $search_params = [];
        if($request->radius_id > 0) $search_params['radius_id'] = $request->radius_id;
        if($request->width_id > 0) $search_params['width_id'] = $request->width_id;
        if($request->profile_id > 0) $search_params['profile_id'] = $request->profile_id;

        // only search on active tires
        $search_params['state'] = 'ACTIVO';

        $tires = Tire::with('tirePhotos')->where($search_params)->paginate(12);
        return view('search.index',compact('tires','currencies','vehicleTypes','brands','productCategories','request'));
    }
}
