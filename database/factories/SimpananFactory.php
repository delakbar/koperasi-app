<?php

namespace Database\Factories;

use App\Models\Simpanan;
use App\Models\Anggota;
use Illuminate\Database\Eloquent\Factories\Factory;

class SimpananFactory extends Factory
{
    protected $model = Simpanan::class;

    public function definition()
    {
        return [
            'anggota_id' => Anggota::factory(),
            'jenis_simpanan' => $this->faker->randomElement(['Simpanan Pokok', 'Simpanan Wajib', 'Simpanan Sukarela']),
            'nominal_simpanan' => $this->faker->randomFloat(2, 100000, 1000000),
            'input_by' => $this->faker->date(),
            'tgl_update' => $this->faker->optional()->dateTime(),
        ];
    }
}
