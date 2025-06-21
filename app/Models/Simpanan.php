<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

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
    ];

    public function anggota()
    {
        return $this->belongsTo(Anggota::class, 'anggota_id', 'id');
    }
}
