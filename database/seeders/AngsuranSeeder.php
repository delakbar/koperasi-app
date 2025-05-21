<?php

namespace Database\Seeders;

use App\Models\Angsuran;
use Illuminate\Database\Seeder;

class AngsuranSeeder extends Seeder
{
    public function run()
    {
        Angsuran::factory()->count(50)->create();
    }
}
