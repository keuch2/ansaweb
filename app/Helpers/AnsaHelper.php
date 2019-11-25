<?php
namespace App\Helpers;

class AnsaHelper{


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


}