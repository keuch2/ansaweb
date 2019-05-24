<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class VehicleType extends Model
{
    use SoftDeletes;

    protected  $fillable = ['vehicle_type', 'description', 'photo'];

    protected $hidden = ['created_at', 'updated_at', 'deleted_at'];

    public function vehicleTypePhotos()
    {
        return $this->hasMany(VehicleTypePhoto::class);
    }

    public function tires()
    {
        return $this->belongsToMany(Tire::class, 'tire_vehicle_types', 'vehicle_types_id', 'tires_id')->withPivot(['id', 'tires_id', 'vehicle_types_id']);
    }

    public function products()
    {
        return $this->belongsToMany(Product::class, 'product_vehicle_types', 'vehicle_types_id', 'products_id')->withPivot(['id', 'products_id', 'vehicle_types_id']);
    }
}