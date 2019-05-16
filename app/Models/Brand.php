<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Brand extends Model
{
    use SoftDeletes;

    protected  $fillable = ['brand_name', 'photo', 'local_link', 'external_link'];

    protected $hidden = ['created_at', 'updated_at', 'deleted_at'];


    public function tires()
    {
        return $this->hasMany(Tire::class);
    }

    public function products()
    {
        return $this->hasMany(Product::class);
    }
}
