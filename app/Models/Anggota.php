<?php

namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable; // <- ini penting
use App\Models\Simpanan;
use App\Models\pinjaman;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Anggota extends Authenticatable
{
    use HasFactory;
    protected $table = 'anggota';
    protected $fillable = [
        'username',
        'password',
        'nama',
        'jabatan',
        'no_hp',
        'role',
        'is_active',
    ];

    public function simpanans()
    {
        return $this->hasMany(Simpanan::class, 'anggota_id', 'id');
    }

    public function pinjamans()
    {
        return $this->hasMany(Pinjaman::class, 'anggota_id', 'id');
    }
    public function getAuthIdentifierName()
    {
        return 'username';
    }

}
