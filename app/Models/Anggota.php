<?php

namespace App\Models;

use App\Models\pinjaman;
use App\Models\Simpanan;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable; // <- ini penting

class Anggota extends Authenticatable
{
    use HasFactory, Notifiable;
    protected $table = 'anggota';
    protected $primaryKey = 'id';
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
    public function getAuthPassword()
    {
        return $this->password;
    }
    

}
