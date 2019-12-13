<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\ProductCategory;
use App\Models\VehicleType;
use Illuminate\Http\Request;

class StaticContentController extends Controller
{
    public function BranchOffices()
    {
        $currencies = \Config::get('currency.currencies');
        $vehicleTypes = VehicleType::all();
        $brands = Brand::all();
        $productCategories = ProductCategory::all();

        return view('static.branchoffices', ['data' => null,
            'currencies' => $currencies,
            'vehicleTypes' => $vehicleTypes,
            'brands' => $brands,
            'productCategories' => $productCategories,
        ]);
    }

    public function AboutUs()
    {
        $currencies = \Config::get('currency.currencies');
        $vehicleTypes = VehicleType::all();
        $brands = Brand::all();
        $productCategories = ProductCategory::all();

        return view('static.aboutus', ['data' => null,
            'currencies' => $currencies,
            'vehicleTypes' => $vehicleTypes,
            'brands' => $brands,
            'productCategories' => $productCategories,
        ]);
    }

    public function Services()
    {
        $currencies = \Config::get('currency.currencies');
        $vehicleTypes = VehicleType::all();
        $brands = Brand::all();
        $productCategories = ProductCategory::all();

        return view('static.services', ['data' => null,
            'currencies' => $currencies,
            'vehicleTypes' => $vehicleTypes,
            'brands' => $brands,
            'productCategories' => $productCategories,
        ]);
    }
}
