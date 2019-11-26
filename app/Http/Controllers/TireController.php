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

        // get aditional photos
        $data['photos'] = $tire->tirePhotos;


        // similar tires (last 5 with the same brand_id  or similar radius_id, width_id  or profile_id -> haha fucked!)
        $widthId = $tire->width_id;
        $profileId = $tire->profile_id;
        $radiusId = $tire->radius_id;
        $tireId = $tire->id;
        $brandId = $tire->brand_id;

        $similarTires = Tire::where('id', '<>', $tireId)->where('brand_id', '=', $brandId)
                        ->orWhere(function($query) use ($tireId, $radiusId){
                            $query->where('id', '<>', $tireId)->where('radius_id', '=', $radiusId);
                        })
                        ->orWhere(function($query2) use ($tireId, $profileId){
                            $query2->where('id', '<>', $tireId)->where('profile_id', '=', $profileId);
                        })->orWhere(function($query3) use ($tireId, $widthId) {
                            $query3->where('id', '<>', $tireId)->where('width_id', '=', $widthId);
                        })->orderBy('id', 'DESC')->take(\Config::get('content.maxSimilarTires'))->get();;

        // get other products (tires) -> turn this off =D

        //dd($data['tire'], $photos, $similarTires);
        $data['similarTires'] = $similarTires;
        return view('tires.view')->with($data);
    }
}
