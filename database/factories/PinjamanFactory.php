<?php

namespace Database\Factories;

use App\Models\Pinjaman;
use App\Models\Anggota;
use Illuminate\Database\Eloquent\Factories\Factory;

class PinjamanFactory extends Factory
{
    protected $model = Pinjaman::class;

    public function definition()
    {
        return [
            'anggota_id' => Anggota::factory(),
            'nominal_pinjaman' => $this->faker->randomFloat(2, 1000000, 10000000),
            'jenis_pinjaman' => $this->faker->randomElement(['Pinjaman Modal', 'Pinjaman Konsumtif']),
            'tgl_pinjam' => $this->faker->date(),
            'jml_angsuran' => $this->faker->numberBetween(1, 12),
            'input_by' => $this->faker->name,
            'tgl_input' => $this->faker->optional()->dateTime(),
        ];
    }
}
