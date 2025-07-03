<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class administrasi extends Model
{
    protected $table = 'administrasi';
    protected $fillable = [
        'administrasi',
        'update_by',
        'tgl_update',
    ];
}
