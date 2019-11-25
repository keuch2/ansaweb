<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TireController extends Controller
{
    public function index()
    {
        return ['tires' => 'all'];
    }

    public function ListByVehicleType($vehicleTypeId)
    {
        return ['vehiclyeType'=> $vehicleTypeId];
    }

    public function ListByBrand($brandId)
    {
        return ['brandId' => $brandId];
    }

    public function Tire($tireId)
    {
        return ['tireId' => $tireId];
    }
}
