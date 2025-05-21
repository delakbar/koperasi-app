<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class jenis_simpanan extends Model
{
    protected $table = 'jenis_simpanan';
    protected $primaryKey = 'id';
    protected $fillable = [
        'id',
        'jenis_simpanan'
    ];
}
