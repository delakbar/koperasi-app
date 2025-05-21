<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class jenis_pinjaman extends Model
{
     protected $table = 'jenis_pinjaman';
    protected $primaryKey = 'id';
    protected $fillable = [
        'id',
        'jenis_simpanan'
    ];
}
