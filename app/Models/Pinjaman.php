<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pinjaman extends Model
{
    use HasFactory;
    protected $table = 'pinjaman';
    public $timestamps = false; 
    protected $fillable = [
        'anggota_id',
        'nominal_pinjaman',
        'jenis_pinjaman',
        'tgl_pinjam',
        'jml_angsuran',
        'input_by',
        'rate',
        'provisi',
        'tgl_input',
    ];

    public function anggota()
    {
        return $this->belongsTo(Anggota::class, 'anggota_id', 'id');
    }

    public function angsurans()
    {
        return $this->hasMany(Angsuran::class, 'pinjaman_id', 'id');
    }
}
