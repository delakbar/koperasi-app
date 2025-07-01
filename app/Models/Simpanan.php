<?php

namespace App\Models;

use App\Models\Anggota;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Simpanan extends Model
{
    use HasFactory;
    protected $table = 'simpanan';
    public $timestamps = false; 
    protected $fillable = [
        'anggota_id',
        'nama',
        'jenis_simpanan',
        'nominal_simpanan',
        'input_by',
        'tgl_update',
        'status',
        'keterangan',
    ];

    public function anggota()
    {
        return $this->belongsTo(Anggota::class, 'anggota_id', 'id');
    }
}
