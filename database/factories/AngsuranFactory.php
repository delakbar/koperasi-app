<?php

namespace Database\Factories;

use App\Models\Angsuran;
use App\Models\Pinjaman;
use Illuminate\Database\Eloquent\Factories\Factory;

class AngsuranFactory extends Factory
{
    protected $model = Angsuran::class;

    public function definition()
    {
        return [
            'pinjaman_id' => Pinjaman::factory(),
            'angsuran_ke' => $this->faker->numberBetween(1, 12),
            'nominal_angsuran' => $this->faker->randomFloat(2, 100000, 1000000),
            'total_pinjaman' => $this->faker->randomFloat(2, 1000000, 10000000),
            'tgl_bayar' => $this->faker->date(),
            'tgl_input' => $this->faker->optional()->dateTime(),
        ];
    }
}
