<?php

namespace Database\Seeders;

use App\Models\Pinjaman;
use Illuminate\Database\Seeder;

class PinjamanSeeder extends Seeder
{
    public function run()
    {
        Pinjaman::factory()->count(50)->create();
    }
}
