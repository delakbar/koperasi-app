<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ShuAnggota extends Model
{
    use HasFactory;
    //timestamp false
    public $timestamps = false;
    protected $table = 'shu_anggota';
    protected $primaryKey = 'id';
    protected $fillable = [
        'anggota_id',
        'total_simpanan',
        'total_pinjaman',
        'shu_simpanan',
        'shu_pinjaman',
        'total_shu',
        'pengkalisimpanan',
        'pengkalipinjaman',
        'shuper1000',
    ];
}
