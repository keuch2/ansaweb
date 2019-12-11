<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Tire extends Model
{
    use SoftDeletes;

    protected  $fillable = ['tire_code', 'tire_name', 'tire_type', 'brand_id', 'radius_id', 'width_id', 'profile_id', 'description',
                            'price', 'discount_rate', 'final_price', 'state', 'featured', 'show_price', 'visit_counter', 'photo'];

    protected $hidden = ['created_at', 'updated_at', 'deleted_at'];


    public function brand()
    {
        return $this->belongsTo(Brand::class);
    }

    public function radius()
    {
        return $this->belongsTo(Radius::class);
    }

    public function width()
    {
        return $this->belongsTo(Width::class);
    }

    public function profile()
    {
        return $this->belongsTo(Profile::class);
    }

    public function tirePhotos()
    {
        return $this->hasMany(TirePhoto::class);
    }

    public function vehicleTypes()
    {
        return $this->belongsToMany(VehicleType::class, 'tire_vehicle_types','tires_id', 'vehicle_types_id')->withPivot(['id', 'tires_id', 'vehicle_types_id']);
    }
}
