<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class VehicleTypePhoto extends Model
{
    use SoftDeletes;

    protected  $fillable = ['vehicle_type_id', 'title', 'photo'];

    protected $hidden = ['created_at', 'updated_at', 'deleted_at'];

    public function vehicleType()
    {
        return $this->belongsTo(VehicleType::class);
    }
}