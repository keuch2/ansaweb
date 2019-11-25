<?php
namespace App\Helpers;

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
        $brands = Brand::all();
        $productCategories = ProductCategory::all();
        $radiuses = Radius::all();
        $widths = Width::all();
        $profiles = Profile::all();

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
                'dolarToReal' => $dolarToReal
            ];
    }

}