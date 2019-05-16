<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ProductPhoto extends Model
{
    use SoftDeletes;

    protected  $fillable = ['product_id', 'title', 'photo'];

    protected $hidden = ['created_at', 'updated_at', 'deleted_at'];


    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}
