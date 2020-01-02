<?php
namespace App\Helpers;

use App\Models\Banner;
use App\Models\Brand;
use App\Models\ProductCategory;
use App\Models\Profile;
use App\Models\Promotion;
use App\Models\Radius;
use App\Models\Tire;
use App\Models\VehicleType;
use App\Models\Width;

class AnsaHelper
{
    public static function getGsPrice(float  $value)
    {
        $dolarToGs = \DB::table('cms_settings')->where('name', 'cotizacion_dolar_usd_guaranigs')->first()->content;
        return (integer) ($dolarToGs*$value);

    }

    public static function getRsPrice(float $value)
    {
        $dolarToReal = \DB::table('cms_settings')->where('name', 'cotizacion_dolar_usd_real')->first()->content;
        return  (float) ($dolarToReal * $value);
    }

    public static function getHeaderData()
    {
        $currencies = \Config::get('currency.currencies');
        $vehicleTypes = VehicleType::all();
        //$brands = Brand::all();
        $brands = Brand::where(['featured'=>1])->orderBy('brands.brand_name', 'ASC')->get();
        $productCategories = ProductCategory::all();

        //$radiuses = Radius::all();
        $radiuses = Radius::orderBy('radius_name', 'asc')->get();
        //$widths = Width::all();
        $widths = Width::orderBy('width_name', 'asc')->get();
        //$profiles = Profile::all();
        $profiles = Profile::orderBy('profile_name', 'asc')->get();

        $banners = Banner::orderBy('id', 'DESC')->take(5)->get();

        $dolarToGs = \DB::table('cms_settings')->where('name', 'cotizacion_dolar_usd_guaranigs')->first()->content;
        $dolarToGs = (float)$dolarToGs;
        $dolarToReal = \DB::table('cms_settings')->where('name', 'cotizacion_dolar_usd_real')->first()->content;
        $dolarToReal = (float)$dolarToReal;

        return ['currencies' => $currencies,
                'vehicleTypes' => $vehicleTypes,
                'brands' => $brands,
                'productCategories' => $productCategories,
                'radiuses' => $radiuses,
                'widths' => $widths,
                'profiles' => $profiles,
                'dolarToGs' => $dolarToGs,
                'dolarToReal' => $dolarToReal,
                'banners' => $banners
            ];
    }

}