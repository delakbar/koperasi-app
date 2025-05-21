<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class provisi extends Model
{
    protected $table = 'provisi';
    protected $fillable = [
        'provisi',
        'update_by',
        'tgl_update',
    ];
}
