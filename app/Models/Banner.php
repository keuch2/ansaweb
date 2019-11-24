<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Banner extends Model
{
    use SoftDeletes;

    protected  $fillable = ['title', 'photo', 'local_link', 'external_link'];

    protected $hidden = ['created_at', 'updated_at', 'deleted_at'];
}