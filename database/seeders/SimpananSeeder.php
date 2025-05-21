<?php

namespace Database\Seeders;

use App\Models\Simpanan;
use Illuminate\Database\Seeder;

class SimpananSeeder extends Seeder
{
    public function run()
    {
        Simpanan::factory()->count(50)->create();
    }
}
