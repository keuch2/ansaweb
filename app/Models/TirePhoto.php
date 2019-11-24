<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class TirePhoto extends Model
{
    use SoftDeletes;

    protected  $fillable = ['tire_id', 'title', 'photo'];

    protected $hidden = ['created_at', 'updated_at', 'deleted_at'];


    public function tire()
    {
        return $this->belongsTo(Tire::class);
    }
}
