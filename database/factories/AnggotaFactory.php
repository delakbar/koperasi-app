<?php

namespace Database\Factories;

use App\Models\Anggota;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\Hash;

class AnggotaFactory extends Factory
{
    protected $model = Anggota::class;

    public function definition()
    {
        return [
            'username' => $this->faker->unique()->userName,
            'password' => Hash::make('password'), // Password default
            'nama' => $this->faker->name,
            'jabatan' => $this->faker->randomElement(['Ketua', 'Wakil Ketua', 'Sekretaris', 'Anggota']),
            'no_hp' => $this->faker->phoneNumber,
            'role' => 'anggota',
            'is_active' => '1',
        ];
    }
}
