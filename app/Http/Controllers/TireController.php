<?php

namespace App\Http\Controllers;

use App\Helpers\AnsaHelper;
use App\Models\Tire;
use Illuminate\Http\Request;

class TireController extends Controller
{
    public function index()
    {
        $data = AnsaHelper::getHeaderData();
        $tires =Tire::where('state', 'ACTIVO')->orderBy('id', 'DESC')->paginate(\Config::get('content.itemsPerPage'));
        $data['tires'] = $tires;
        return view('tires.list')->with($data);
    }

    public function ListByVehicleType($vehicleTypeId)
    {
        $data = AnsaHelper::getHeaderData();
        $tires = Tire::whereHas('vehicleTypes', function ($query) use ($vehicleTypeId) {
            $query->where('vehicle_types.id', $vehicleTypeId);
        })
        ->where('tires.state', 'ACTIVO')->orderBy('tires.id', 'DESC')->paginate(\Config::get('content.itemsPerPage'));
        $data['tires'] = $tires;
        return view('tires.list')->with($data);
    }

    public function ListByBrand($brandId)
    {
        $data = AnsaHelper::getHeaderData();
        $tires =Tire::where('state', 'ACTIVO')->where('brand_id', $brandId)->orderBy('id', 'DESC')->paginate(\Config::get('content.itemsPerPage'));
        $data['tires'] = $tires;
        return view('tires.list')->with($data);
    }

    public function Tire($tireId)
    {
        $data = AnsaHelper::getHeaderData();
        $tire = Tire::findOrFail($tireId);
        $data['tire'] = $tire;
        dd($tire);
        return view('tires.view')->with($data);

    }
}
