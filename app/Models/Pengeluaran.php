<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Pengeluaran extends Model
{
    protected $table = 'pengeluaran';
    protected $primaryKey = 'id';
    public $timestamps = false;

    protected $fillable = [
        'id',
        'jenis_pengeluaran',
        'rate_pengeluaran',
        'tgl_input',
        'input_by',
        'keterangan'
    ];

    public function user()
    {
        return $this->belongsTo(User::class, 'id_user');
    }
}
