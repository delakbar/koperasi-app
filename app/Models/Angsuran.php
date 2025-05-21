<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Angsuran extends Model
{
    use HasFactory;
    protected $table = 'angsuran';
    public $timestamps = false; 
    protected $fillable = [
        'pinjaman_id',
        'angsuran_ke',
        'nominal_angsuran',
        'total_pinjaman',
        'tgl_bayar',
        'tgl_input',
        'anggota_id',
        'status_bayar',
    ];

    public function pinjaman()
    {
        return $this->belongsTo(Pinjaman::class, 'pinjaman_id', 'id');
    }
}
