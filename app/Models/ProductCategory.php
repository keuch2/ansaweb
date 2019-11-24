<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ProductCategory extends Model
{
    use SoftDeletes;

    protected  $fillable = ['category_name', 'photo'];

    protected $hidden = ['created_at', 'updated_at', 'deleted_at'];


    public function products()
    {
        return $this->hasMany(Product::class);
    }
}
