<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Width extends Model
{
    use SoftDeletes;

    protected  $fillable = ['width_name', 'width_value'];

    protected $hidden = ['created_at', 'updated_at', 'deleted_at'];


    public function tires()
    {
        //return $this->hasMany(Tire::class);
    }
}

