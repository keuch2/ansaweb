<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Product extends Model
{
    use SoftDeletes;

    protected  $fillable = ['product_code', 'product_name', 'product_category_id', 'brand_id', 'description', 'price', 'discount_rate', 'final_price', 'state', 'featured', 'photo'];

    protected $hidden = ['created_at', 'updated_at', 'deleted_at'];


    public function productPhotos()
    {
        return $this->hasMany(ProductPhoto::class);
    }

    public function productCategory()
    {
        return $this->belongsTo(ProductCategory::class);
    }

    public function vehicleTypes()
    {
        return $this->belongsToMany(VehicleType::class, 'product_vehicle_types', 'products_id', 'vehicle_types_id' )->withPivot(['id', 'products_id', 'vehicle_types_id']);
    }
}
