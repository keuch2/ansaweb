<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Session;

class CurrencyController extends Controller
{

    public function ajaxSetCurrency(Request $request)
    {
        //if($request->ajax())
        //{
            $currencies = \Config::get('currency.currencies');

            if(isset($currencies[$request->currencyId]))
            {
                $currencyId =  $request->currencyId;

                Session::put('currency_id', $currencyId);
                Session::put('currency_label', $currencies[$currencyId]['label']);
                Session::put('currency_code', $currencies[$currencyId]['code']);

                return response()->json(['currency_id' => $currencyId,
                                         'currency_label'=>$currencies[$currencyId]['label'],
                                         'currency_code'=>$currencies[$currencyId]['code']
                    ]);
            }else{
                $currencyId = 0;
                return response()->json(['currency_id' => $currencyId,
                    'currency_label'=>$currencies[$currencyId]['label'],
                    'currency_code'=>$currencies[$currencyId]['code']
                ]);
            }
        //}
    }
}
