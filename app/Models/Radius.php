<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Radius extends Model
{
    use SoftDeletes;

    protected  $fillable = ['radius_name', 'radius_value'];

    protected $hidden = ['created_at', 'updated_at', 'deleted_at'];


    public function tires()
    {
        //return $this->hasMany(Tire::class);
    }
}
