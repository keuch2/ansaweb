<?php

namespace App\Http\Controllers;

use App\Helpers\AnsaHelper;
use App\Models\Brand;
use App\Models\ProductCategory;
use App\Models\Profile;
use App\Models\Radius;
use App\Models\Promotion;
use App\Models\Tire;
use App\Models\VehicleType;
use App\Models\Width;
use Illuminate\Http\Request;
use Session;

class HomeController extends Controller
{
    public function index(Request $request)
    {
        // basic data
        $data = AnsaHelper::getHeaderData();

        // home data
        $offers = Tire::where('discount_rate', '>', 0)->where('state', 'ACTIVO')->orderBy('id', 'DESC')->take(\Config::get('content.itemsPerPage'))->get();
        $featured = Tire::where('featured', '=', 1)->where('state', 'ACTIVO')->orderBy('id', 'DESC')->take(\Config::get('content.maxFeaturedInHome'))->get();
        $promotions = Promotion::orderBy('id', 'DESC')->take(\Config::get('content.maxPromotionsInHome'))->get();

        $data['offers'] = $offers;
        $data['featured'] = $featured;
        $data['promotions'] = $promotions;

        return view('home.home')->with($data);
    }
}
